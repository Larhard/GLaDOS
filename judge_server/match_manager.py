import threading
import re


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


class MatchManager(object):
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
