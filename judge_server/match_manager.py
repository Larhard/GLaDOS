import threading
import re


class MatchThread(threading.Thread):
    def __init__(self, match):
        super(MatchThread, self).__init__()
        self.match = match

    def run(self):
        self.match.judge.send("-1\tstart")


class MatchSession:
    def __init__(self, match, session_id):
        self.match = match
        self.session_id = session_id

    def send(self, what):
        self.match.judge.send('{}\t{}'.format(self.session_id, what))


class TestJudge:
    def __init__(self, match):
        self.match = match

    def send(self, what):
        print what
        self.match.send("0 received {}".format(what))


class Match:
    def __init__(self, contest_id):
        self.contest_id = contest_id
        self.players = []
        self.max_players = 2
        self.judge = TestJudge(self)

    def register(self, conn):
        self.players.append(conn)
        session_id = len(self.players)
        return MatchSession(self, session_id)

    def start(self):
        match_thread = MatchThread(self)
        match_thread.setDaemon(True)
        match_thread.start()

    def is_full(self):
        return len(self.players) == self.max_players

    def send(self, what):
        to = None
        message = None

        msg = re.match('^\s*(?P<to>\d+)\s(?P<message>.*)$', what)
        if msg:
            to = int(msg.group('to'))
            message = msg.group('message')
            message = re.sub('\n', '\\n', message)
            message += '\n'

        if 1 <= to <= len(self.players):
            self.players[to-1].send(message)
        elif to == 0:
            for player in self.players:
                player.send(message)
        else:
            print "'{}' to log".format(what)


class Match(object):
    def __init__(self, contest):
        self.contest = contest
        self.lobby = []

    def register(self, user):
        self.lobby.append(user)

    def is_ready(self):
        assert self.contest.players_count <= len(self.lobby)
        return self.contest.players_count == len(self.lobby)

    def start(self):
        pass


class MatchDB(object):
    def __init__(self):
        self.matches_lock = threading.RLock
        self.matches = {}

    def get_match_session(self, contest, user):
        with self.matches_lock:
            if contest.id not in self.matches:
                self.matches[contest.id] = Match(contest)

            match = self.matches[contest.id]
            assert match is not None

            match_session = match.register(user)
            assert match_session is not None

            return match_session
