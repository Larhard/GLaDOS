import threading
import time
import re


class MatchSession(object):
    def __init__(self, user, conn):
        self.user = user
        self.conn = conn


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
    def __init__(self, contest):
        self.contest = contest
        self.lobby = []
        self.match_thread = MatchThread(self)

    def register(self, user, conn):
        self.lobby.append(user)
        return MatchSession(user=user, conn=conn)

    def is_ready(self):
        assert self.contest.players_count <= len(self.lobby)
        return self.contest.players_count == len(self.lobby)

    def start(self):
        self.match_thread.start()

    def close(self):
        self.match_thread.stop()


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

            return match_session
