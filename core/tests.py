from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase
from django.utils import timezone

from core.models import *


class CoreTest(TestCase):
    def setUp(self):
        self.contest = Contest()
        self.contest.name = 'Test Contest'
        self.contest.players_count = 1
        self.contest.save()

        self.judge = Judge()
        self.judge.path = 'some path'
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

    def test_program_match_uniqueness(self):
        pm = ProgramMatch()
        pm.program = self.program
        pm.match = self.match
        pm.save()

        pm = ProgramMatch()
        pm.program = self.program
        pm.match = self.match

        exception = False
        try:
            pm.save()
        except (IntegrityError, ValidationError):
            exception = True

        self.assertTrue(exception, "(program match) pair is not unique")

    def test_contest_clean_start_end_time(self):
        contest = Contest()
        contest.end = timezone.now()
        contest.start = contest.end - timezone.timedelta(days=1)

        exception = False
        try:
            contest.save()
        except (IntegrityError, ValidationError):
            exception = True
        
        self.assertTrue(exception, "contest start can occur after contest end")

    def test_no_logs_before_match_start(self):
        match = Match()
        match.start = timezone.now()

        match_log = MatchLog()
        match_log.time = match.start - timezone.timedelta(days=1)

        exception = False
        try:
            match.save()
            match_log.save()
        except (IntegrityError, ValidationError):
            exception = True
        
        self.assertTrue(exception, "log with earlier date than contest")

    def test_judge_was_default(self):
        judge = Judge()
        judge.was_default_judge = True

        match = Match()
        match.judge = judge

        exception = False
        try:
            judge.save()
            match.save()
        except (IntegrityError, ValidationError):
            exception = True

        self.assertTrue(exception, "especially for Mr. Maciek")

    def test_wins_not_negative(self):
        program = Program()
        program.wins = (-1)

        exception = False
        try:
            program.save()
        except (IntegrityError, ValidationError):
            exception = True

        self.assertTrue(exception, "negative wins should throw errors")

    def test_defeats_not_negative(self):
        program = Program()
        program.defeats = (-1)

        exception = False
        try:
            program.save()
        except (IntegrityError, ValidationError):
            exception = True

        self.assertTrue(exception, "negative defeats should throw errors")

    def test_ties_not_negative(self):
        program = Program()
        program.ties = (-1)

        exception = False
        try:
            program.save()
        except (IntegrityError, ValidationError):
            exception = True

        self.assertTrue(exception, "negative ties should throw errors")




