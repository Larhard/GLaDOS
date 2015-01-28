import threading
import time
import core.models
from judge_server.judge import JudgeWrapper
import re


class MatchSession(object):
    def __init__(self, user, conn, match, player_id):
        self.user = user
        self.conn = conn
        self.match = match
        self.player_id = player_id

    def send(self, what):
        msg = '{} {}'.format(self.player_id, what)
        self.match.judge.send(msg)


class Match(object):
    class User(object):
        def __init__(self, user, conn):
            self.user = user
            self.conn = conn

    def __init__(self, contest):
        self.contest = contest
        self.lobby = []
        self.judge = JudgeWrapper(match=self)

        self.match = core.models.Match()
        self.match.contest = self.contest
        self.match.judge = self.contest.default_judge
        self.match.save()

        self.log("match: init lobby")

    def register(self, user, conn):
        self.lobby.append(Match.User(user, conn))
        return MatchSession(user=user, conn=conn, match=self, player_id=len(self.lobby))

    def is_ready(self):
        assert self.contest.players_count >= len(self.lobby)
        return self.contest.players_count == len(self.lobby)

    def send(self, what):
        # ignore comments
        match = re.match('^#', what)
        if match is not None:
            return

        # message
        match = re.match('^(?P<recipient>-?\d+)\s?(?P<message>.*)$', what, re.S)
        if match is not None:
            recipient = int(match.group('recipient'))
            message = match.group('message')

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
        pass

    def execute(self, command):
        pass


class MatchManager(object):
    def __init__(self):
        self.matches_lock = threading.RLock()
        self.matches = {}

    def get_session(self, contest, user, conn):
        with self.matches_lock:
            if contest.id not in self.matches:
                self.matches[contest.id] = Match(contest)

            match = self.matches[contest.id]
            assert match is not None

            match_session = match.register(user=user, conn=conn)
            assert match_session is not None

            if match.is_ready():
                del self.matches[contest.id]
                match.start()

            return match_session
