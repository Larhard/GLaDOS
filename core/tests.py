from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase
from django.utils import timezone

from core.models import Contest, Judge, Match, Program, ProgramMatch, MatchLog
from glados_auth.models import GladosUser


class CoreTest(TestCase):
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

    def test_program_match_uniqueness(self):
        pm = ProgramMatch()
        pm.program = self.program
        pm.match = self.match
        pm.save()

        pm = ProgramMatch()
        pm.program = self.program
        pm.match = self.match

        exception = None
        try:
            pm.save()
        except IntegrityError as e:
            exception = e

        self.assertTrue(exception, "(program match) pair is not unique")

    def test_contest_clean_start_end_time_invalid(self):
        self.contest.end = timezone.now()
        self.contest.start = self.contest.end + timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
        except ValidationError as e:
            exception = e
        
        self.assertTrue(exception, "contest start can't occur after contest end")

    def test_contest_clean_start_end_time_correct(self):
        self.contest.end = timezone.now()
        self.contest.start = self.contest.end - timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
        except ValidationError as e:
            exception = e
        
        self.assertFalse(exception, "contest start can occur after contest end: {}".format(exception))

    def test_no_logs_before_match_start_invalid(self):
        self.match.start = timezone.now()
        self.match.save()

        self.match_log.match = self.match
        self.match_log.time = self.match.start - timezone.timedelta(days=1)

        exception = None
        try:
            self.match_log.save()
        except ValidationError as e:
            exception = e
        
        self.assertTrue(exception, "log with earlier date than match start")
    
    def test_no_logs_before_match_start_correct(self):
        self.match.start = timezone.now()
        self.match.save()

        self.match_log.match = self.match
        self.match_log.time = self.match.start + timezone.timedelta(days=1)

        exception = None
        try:
            self.match_log.save()
        except ValidationError as e:
            print e
            exception = e
        
        self.assertFalse(exception, "log with earlier date than match start: {}".format(exception))

    def test_matches_judge_was_negative_invalid(self):
        self.judge.was_default_judge = False

        self.match.judge = self.judge

        exception = None
        try:
            self.judge.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "especially for Mr. Maciek")
    
    def test_matches_judge_was_negative_correct(self):
        self.judge.was_default_judge = True

        self.match.judge = self.judge

        exception = None
        try:
            self.judge.save()
            self.match.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "especially for Mr. Maciek: {}".format(exception))

    def test_programs_wins_not_negative_invalid(self):
        self.program.wins = (-1)

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "negative wins should throw errors")
    
    def test_programs_wins_not_negative_correct(self):
        self.program.wins = 0

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "non negative wins should not throw errors: {}".format(exception))

    def test_programs_defeats_not_negative_invalid(self):
        self.program.defeats = (-1)

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "negative defeats should throw errors")
    
    def test_programs_defeats_not_negative_correct(self):
        self.program.defeats = 0

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "non negative defeats should not throw errors: {}".format(exception))

    def test_programs_ties_not_negative_invalid(self):
        self.program.ties = (-1)

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "negative ties should throw errors")
    
    def test_programs_ties_not_negative(self):
        self.program.ties = 0

        exception = None
        try:
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "non negative ties should not throw errors: {}".format(exception))

    def test_programs_application_time_after_constest_start_invalid(self):
        self.program.application_time = timezone.now()

        self.contest.start = self.program.application_time + timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertTrue(exception, "program can't be submitted before the contest start")

    def test_programs_application_time_after_constest_start_correct(self):
        self.contest.start = timezone.now()

        self.program.application_time = self.contest.start + timezone.timedelta(days=1)

        exception = None
        try:
            self.contest.save()
            self.program.save()
        except ValidationError as e:
            exception = e

        self.assertFalse(exception, "program can be submitted before the contest start: {}".format(exception))



