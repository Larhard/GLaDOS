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
        self.user1 = User.objects.create_user("user1", password="passwd1")
        self.user2 = User.objects.create_user("user2", password="passwd2")

    def test_parse_join(self):
        parser = InitParser()
        reply, new_parser = parser.parse('JOIN {} AS "{}" PASSWORD "{}"'.format(self.contest1.id,
            'user1', 'passwd1'))
        self.assertRegexpMatches(reply, "OK\n")
        self.assertNotEqual(parser, new_parser)

    def test_parse_join_invalid_passwd(self):
        parser = InitParser()
        reply, new_parser = parser.parse('JOIN {} AS "{}" PASSWORD "{}"'.format(self.contest1.id,
            'user1', 'random_password'))
        self.assertRegexpMatches(reply, "FAIL INVALID_PASSWORD\n")
        self.assertEqual(parser, new_parser)

    def test_parse_join_invalid_contest(self):
        parser = InitParser()
        reply, new_parser = parser.parse('JOIN {} AS "{}" PASSWORD "{}"'.format(1234567890,
            'user1', 'passwd1'))
        self.assertRegexpMatches(reply, "FAIL INVALID_CONTEST\n")
        self.assertEqual(parser, new_parser)
