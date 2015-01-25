from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase
from django.utils import timezone

from core.models import Contest, Judge, Match, Program, ProgramMatch, MatchLog
from glados_auth.models import GladosUser

class MatchTest(TestCase):
    def setUp(self):
        self.contest = Contest()
        self.contest.name = 'Test Contest'
        self.contest.players_count = 1
        self.contest.save()

        self.judge = Judge()
        self.judge.path = 'some path'
        self.judge.was_default_judge = True
        self.judge.contest = self.contest
        self.judge.save()

        self.match = Match()
        self.match.judge = self.judge
        self.match.contest = self.contest
        self.match.save()

        self.user = GladosUser.objects.create_user("test_user")

        self.program = Program()
        self.program.user = self.user
        self.program.contest = self.contest
        self.program.name = 'test program'
        self.program.save()

        self.match_log = MatchLog()
        self.match_log.body = 'some random text'
        self.match_log.match = self.match
        self.match_log.save()

    def test_matches_judge_was_default_invalid(self):
        self.judge.was_default_judge = False

        self.match.judge = self.judge

        exception = None
        try:
            self.judge.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "especially for Mr. Maciek")
    
    def test_matches_judge_was_default_correct(self):
        self.judge.was_default_judge = True

        self.match.judge = self.judge

        exception = None
        try:
            self.judge.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "especially for Mr. Maciek: {}".format(exception))

    def test_match_starts_after_contest_invalid(self):
        self.contest.start = timezone.now()

        self.match.start = self.contest.start - timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "does not throw exception when match starts before the contest starts")

    def test_match_starts_after_contest_correct(self):
        self.contest.start = timezone.now()

        self.match.start = self.contest.start + timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "does throw exception even when match starts correctly after contest starts") 


