# coding=utf-8

from urllib import quote
from core.models import Contest, Judge
from django.contrib.auth import get_user_model
from django.test import TestCase
from judge_server.match_manager import MatchManager
from judge_server.parser import InitParser


class FakeClient():
    def __init__(self):
        self.out = []

    def send(self, what):
        self.out.append(what)


class ParserTest(TestCase):
    def setUp(self):
        self.judge = Judge()
        self.judge.path = '/example/judge'
        self.judge.save()

        self.contest1 = Contest()
        self.contest1.name = "test_contest_1"
        self.contest1.players_count = 1
        self.contest1.default_judge = self.judge
        self.contest1.save()

        self.contest2 = Contest()
        self.contest2.name = "test_contest_2"
        self.contest2.players_count = 2
        self.contest2.save()

        User = get_user_model()
        self.user1 = User.objects.create_user("user1", password="passwd1")
        self.user2 = User.objects.create_user("user2", password="hasło mocne")

        self.client_thread = FakeClient()

        self.match_manager = MatchManager()

    def test_parse_join(self):
        parser = InitParser(connection=self.client_thread, match_manager=self.match_manager)
        reply, new_parser = parser.parse('LOGIN {} PASSWORD {}'.format(quote('user1'), quote('passwd1')))
        self.assertRegexpMatches(reply, "OK\n")

    def test_parse_join_invalid_passwd(self):
        parser = InitParser(connection=self.client_thread, match_manager=self.match_manager)
        reply, new_parser = parser.parse('LOGIN {} PASSWORD {}'.format(quote('user1'), quote('random_password')))
        self.assertRegexpMatches(reply, "FAIL INVALID_PASSWORD\n")
        self.assertEqual(parser, new_parser)

    def test_parse_join_invalid_contest(self):
        parser = InitParser(connection=self.client_thread, match_manager=self.match_manager)
        reply, parser = parser.parse('LOGIN {} PASSWORD {}'.format(quote('user1'), quote('passwd1')))
        self.assertRegexpMatches(reply, "OK\n")
        reply, new_parser = parser.parse('JOIN {}'.format(1234567890))
        self.assertRegexpMatches(reply, "FAIL INVALID_CONTEST\n")
        self.assertEqual(parser, new_parser)

    def test_parse_join_ugly_password(self):
        parser = InitParser(connection=self.client_thread, match_manager=self.match_manager)
        reply, parser = parser.parse('LOGIN {} PASSWORD {}'.format(quote('user1'), quote('passwd1')))
        self.assertRegexpMatches(reply, "OK\n")
        reply, parser = parser.parse('JOIN {}'.format(self.contest1.id))
        self.assertRegexpMatches(reply, "OK\n")

    def test_parse_join_contest_without_default_judge(self):
        parser = InitParser(connection=self.client_thread, match_manager=self.match_manager)
        reply, parser = parser.parse('LOGIN {} PASSWORD {}'.format(quote('user1'), quote('passwd1')))
        self.assertRegexpMatches(reply, "OK\n")
        reply, new_parser = parser.parse('JOIN {}'.format(self.contest2.id))
        self.assertRegexpMatches(reply, "FAIL INVALID_CONTEST\n")
        self.assertEqual(parser, new_parser)
