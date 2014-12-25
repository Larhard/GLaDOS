from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase

from core.models import *


class CoreTest(TestCase):
    def setUp(self):
        self.contest = Contest()
        self.contest.name = 'Test Contest'
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
