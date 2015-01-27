from core.models import Contest
from django.contrib.auth import get_user_model
from django.test import TestCase
from judge_server.parser import InitParser


class ParserTest(TestCase):
    def setUp(self):
        self.contest1 = Contest()
        self.contest1.name = "test_contest_1"
        self.contest1.players_count = 1
        self.contest1.save()

        self.contest2 = Contest()
        self.contest2.name = "test_contest_2"
        self.contest2.players_count = 2
        self.contest2.save()

        User = get_user_model()
        self.user1 = User.objects.create_user("user1")
        self.user2 = User.objects.create_user("user2")

    def test_parse_join(self):
        parser = InitParser()
        reply, new_parser = parser.parse("JOIN {} AS {}".format(self.contest1.id, self.user1.id))
        self.assertRegexpMatches(reply, "OK\n")
        self.assertNotEqual(parser, new_parser)
