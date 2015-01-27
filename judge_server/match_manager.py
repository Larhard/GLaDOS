import threading
import time
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


class JudgeWrapper(object):
    def __init__(self, match):
        self.match = match

    def send(self, what):
        # broadcast echo for now
        self.match.send("0 judge received: {}\n".format(what))


class MatchThread(threading.Thread):
    def __init__(self, match):
        super(MatchThread, self).__init__()
        self.match = match
        self.running = True

    def run(self):
        while self.running:
            print 'working'
            time.sleep(1)

    def stop(self):
        self.running = False


class Match(object):
    class User(object):
        def __init__(self, user, conn):
            self.user = user
            self.conn = conn

    def __init__(self, contest):
        self.contest = contest
        self.lobby = []
        self.judge = JudgeWrapper(match=self)

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

            if recipient == 0:
                for user in self.lobby:
                    user.conn.send(message)
            elif recipient > 0:
                self.lobby[recipient].conn.send(message)

            return

    def start(self):
        self.judge.send('-1 START')

    def close(self):
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
