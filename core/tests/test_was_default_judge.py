from core.models import Judge, Contest
from django.test import TestCase


class WasDefaultJudgeTest(TestCase):
    def test_was_default_auto_update(self):
        judge = Judge()
        judge.path = '/example/judge'
        judge.save()

        self.assertFalse(judge.was_default_judge)

        contest1 = Contest()
        contest1.name = "test_contest_1"
        contest1.players_count = 1
        contest1.default_judge = judge
        contest1.save()

        self.assertTrue(judge.was_default_judge)
