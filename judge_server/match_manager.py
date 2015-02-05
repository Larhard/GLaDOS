import threading
import time
import weakref
import core.models
from judge_server.judge_wrapper import JudgeWrapper
import re


class MatchSession(object):
    def __init__(self, result, conn, match, player_id):
        self.result = result
        self.program = self.result.program
        self.user = self.program.user
        self.conn = conn
        self.match = match
        self.player_id = player_id

    def send(self, what):
        msg = '{} {}\n'.format(self.player_id, what)
        self.match.judge.send(msg)


class Match(object):
    class User(object):
        def __init__(self, result, conn):
            self.result = result
            self.program = self.result.program
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

        self.log("match: judge: {}".format(self.contest.default_judge.path), priority=-10)
        self.log("match: init_parameters:\n{}".format(self.contest.default_judge.init_parameters), priority=-10)
        self.log("match: init lobby", priority=-10)

    def register(self, result, conn):
        self.log("match: {} [{}] joins lobby with program {}"
            .format(result.program.user, result.program.user_id, result.program), priority=-10)
        self.lobby.append(Match.User(result, conn))
        return MatchSession(result=result, conn=conn, match=self, player_id=len(self.lobby))

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
                if self.execute(message):
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

        self.log("judge: undefined message: {}".format(what), priority=10)

    def start(self):
        self.log("match: start", priority=-10)
        self.judge.send('-1 START')

    def log(self, what, priority=0):
        log = core.models.MatchLog()
        log.match = self.match
        log.body = what
        log.priority = priority
        log.save()

    def close(self):
        self.match.ended = True
        self.match.save()
        self.judge.close()

    def execute(self, command):
        rmatch = re.match('^\s*score\s+(?P<player_id>\d+)\s+(?P<score>-?\d+)\s*$', command, re.I)
        if rmatch:
            player_id = int(rmatch.group('player_id')) - 1
            score = int(rmatch.group('score'))
            try:
                player = self.lobby[player_id]
            except IndexError:
                return None
            result = player.result
            result.score = score
            result.save()
            return True

        rmatch = re.match('^\s*comment\s+(?P<player_id>\d+)\s(?P<comment>.*)$', command, re.I)
        if rmatch:
            player_id = int(rmatch.group('player_id')) - 1
            comment = int(rmatch.group('comment'))
            try:
                player = self.lobby[player_id]
            except IndexError:
                return None
            result = player.result
            result.comment = comment
            result.save()
            return True

        rmatch = re.match('^\s*end\s*$', command, re.I)
        if rmatch:
            self.close()
            return True

        rmatch = re.match('^\s*win\s+(?P<player_id>\d+)\s*', command, re.I)
        if rmatch:
            player_id = int(rmatch.group('player_id')) - 1
            try:
                player = self.lobby[player_id]
            except IndexError:
                return None
            result = player.result
            result.wins += 1
            result.save()
            return True

        rmatch = re.match('^\s*lose\s+(?P<player_id>\d+)\s*', command, re.I)
        if rmatch:
            player_id = int(rmatch.group('player_id')) - 1
            try:
                player = self.lobby[player_id]
            except IndexError:
                return None
            result = player.result
            result.defeats += 1
            result.save()
            return True

        rmatch = re.match('^\s*tie\s+(?P<player_id>\d+)\s*', command, re.I)
        if rmatch:
            player_id = int(rmatch.group('player_id')) - 1
            try:
                player = self.lobby[player_id]
            except IndexError:
                return None
            result = player.result
            result.ties += 1
            result.save()
            return True


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

            result = core.models.ProgramMatch()
            result.program = program
            result.match = match.match  # TODO ok, that does not look good...
            result.save()

            match_session = match.register(result=result, conn=conn)
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
