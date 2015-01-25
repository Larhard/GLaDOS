from django.core.exceptions import ValidationError
from django.db import IntegrityError
from django.test import TestCase
from django.utils import timezone

from core.models import Contest, Judge, Match, Program, ProgramMatch, MatchLog
from glados_auth.models import GladosUser

class MatchLogTest(TestCase):
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

