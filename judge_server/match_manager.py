import threading
import time
import weakref
import core.models
from judge_server.judge_wrapper import JudgeWrapper
import re


class MatchSession(object):
    def __init__(self, program, conn, match, player_id):
        self.program = program
        self.user = self.program.user
        self.conn = conn
        self.match = match
        self.player_id = player_id

    def send(self, what):
        msg = '{} {}\n'.format(self.player_id, what)
        self.match.judge.send(msg)


class Match(object):
    class User(object):
        def __init__(self, program, conn):
            self.program = program
            self.user = self.program.user
            self.conn = conn

    def __init__(self, contest):
        self.contest = contest
        self.lobby = []
        self.judge = JudgeWrapper(judge_path=self.contest.default_judge.path, match=self)

        init_parameters = self.contest.default_judge.init_parameters
        if init_parameters:
            for line in self.contest.default_judge.init_parameters.splitlines():
                self.judge.send(line)

        self.match = core.models.Match()
        self.match.contest = self.contest
        self.match.judge = self.contest.default_judge
        self.match.save()

        self.log("match: judge: {}".format(self.contest.default_judge.path))
        self.log("match: init_parameters:\n{}".format(self.contest.default_judge.init_parameters))
        self.log("match: init lobby")

    def register(self, program, conn):
        self.lobby.append(Match.User(program, conn))
        return MatchSession(program=program, conn=conn, match=self, player_id=len(self.lobby))

    def is_ready(self):
        assert self.contest.players_count >= len(self.lobby)
        return self.contest.players_count == len(self.lobby)

    def send(self, what):
        # ignore comments
        rmatch = re.match('^#', what)
        if rmatch is not None:
            return

        # message
        rmatch = re.match('^(?P<recipient>-?\d+)\s?(?P<message>.*)$', what, re.S)
        if rmatch is not None:
            recipient = int(rmatch.group('recipient'))
            message = rmatch.group('message')

            # broadcast to all players
            if recipient == 0:
                for user in self.lobby:
                    user.conn.send(message)
                return

            # send to particular player
            if len(self.lobby) >= recipient > 0:
                self.lobby[recipient-1].conn.send(message)
                return

            # message to match manager
            if recipient == -1:
                self.execute(message)
                return

            # message to logs
            if recipient <= -2:
                priority = 0
                rmatch = re.match('^-?\d+\.(?P<priority>-?\d+)\s?(?P<message>.*)$', what, re.S)
                if rmatch:
                    priority = rmatch.group('priority')
                    message = rmatch.group('message')
                self.log(message, priority=priority)
                return

        self.log("judge: undefined message: {}".format(what))

    def start(self):
        self.log("match: start")
        self.judge.send('-1 START')

    def log(self, what, priority=0):
        log = core.models.MatchLog()
        log.match = self.match
        log.body = what
        log.priority = priority
        log.save()

    def close(self):
        self.judge.close()

    def execute(self, command):
        pass


class MatchManager(object):
    def __init__(self):
        self.matches_lock = threading.RLock()
        self.matches = {}
        self.running_matches = weakref.WeakSet()

    def get_session(self, contest, program, conn):
        with self.matches_lock:
            if contest.id not in self.matches:
                self.matches[contest.id] = Match(contest)

            match = self.matches[contest.id]
            assert match is not None

            match_session = match.register(program=program, conn=conn)
            assert match_session is not None

            if match.is_ready():
                del self.matches[contest.id]
                self.running_matches.add(match)
                match.start()

            return match_session

    def close(self):
        for match in self.matches.values():
            match.close()

        for match in self.running_matches:
            match.close()
