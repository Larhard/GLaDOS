from urllib import unquote
from core.models import Contest
from django.contrib.auth import authenticate
import re


class ParserBase(object):
    def __init__(self, *args, **kwargs):
        self.command_regex = re.compile('^cmd_')
        self.args = args
        self.kwargs = kwargs

    def parse(self, what):
        """
        @param what: string to parse
        @return: (reply message, None or new parser)
        """
        commands = [k for k in dir(self) if self.command_regex.match(k)]
        for cmd_name in commands:
            cmd = getattr(self, cmd_name)
            res = cmd(what)
            if res is not None:
                return res
        return 'FAIL\n', self


class MatchParser(ParserBase):
    pass


class InitParser(ParserBase):
    def cmd_help(self, what):
        cmd = re.match('^\s*help\s*$', what, re.I)
        if cmd:
            reply = 'OK\n'
            reply += '# JOIN <contest_id> AS <urlencoded username> PASSWORD <urlencoded password>\n'
            return reply, self

    def cmd_join(self, what):
        cmd = re.match('^\s*join\s+(?P<contest>\d+)\s+as\s+(?P<user>[^ ]*)\s+PASSWORD\s+(?P<password>[^ ]*)\s*$',
            what, re.I)

        if cmd:
            username = unquote(cmd.group('user'))
            password = unquote(cmd.group('password'))
            contest_id = cmd.group('contest')

            user = authenticate(username=username, password=password)

            if not user:
                return "FAIL INVALID_PASSWORD\n", self

            try:
                contest = Contest.objects.get(pk=contest_id)
            except Contest.DoesNotExist:
                return "FAIL INVALID_CONTEST\n", self

            assert contest is not None
            assert user is not None

            return "OK\n", MatchParser(*self.args, contest=contest, user=user, **self.kwargs)
