from urllib import unquote
from core.models import Contest, Program
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
    def __init__(self, *args, **kwargs):
        super(MatchParser, self).__init__(*args, **kwargs)

        self.match_manager = self.kwargs['match_manager']
        self.conn = self.kwargs['connection']
        self.user = self.kwargs['user']
        self.contest = self.kwargs['contest']
        self.program = self.kwargs['program']

        self.match_session = self.match_manager.get_session(program=self.program, contest=self.contest, conn=self.conn)

    def cmd_all(self, what):
        self.match_session.send(what)
        return '', self


class InitParser(ParserBase):
    def __init__(self, *args, **kwargs):
        super(InitParser, self).__init__(*args, **kwargs)
        self.user = None
        self.contest = None
        self.program = None

    def cmd_help(self, what):
        cmd = re.match('^\s*help\s*$', what, re.I)
        if cmd:
            reply = 'OK\n'
            reply += '# LOGIN <urlencoded username> PASSWORD <urlencoded password>\n'
            reply += '# PROGRAM <urlencoded program name>\n'
            reply += '# JOIN <contest_id>\n'
            return reply, self

    def cmd_empty(self, what):
        cmd = re.match('^\s*$', what, re.I)
        if cmd:
            return "", self

    def cmd_program(self, what):
        cmd = re.match('^\s*PROGRAM\s+(?P<program>[^\s])\s*$',
            what, re.I)

        if cmd:
            program_name = cmd.group('program')

            if not self.user:
                return "LOGIN REQUIRED\n", self
            if not self.contest:
                return "JOIN REQUIRED\n", self

            try:
                program = Program.objects.get(contest=self.contest, user=self.user, name=program_name)
            except Contest.DoesNotExist:
                program = Program()
                program.contest = self.contest
                program.user = self.user
                program.name = program_name
                program.save()

            self.program = program

            return "OK\n", self

    def cmd_start(self, what):
        cmd = re.match('^\s*START\s*$', what, re.I)

        if cmd:
            if not self.user:
                return "LOGIN REQUIRED\n", self
            if not self.contest:
                return "JOIN REQUIRED\n", self

            if not self.program:
                self.program = Program()
                self.program.contest = self.contest
                self.program.user = self.user
                self.program.save()

            return "OK\n", MatchParser(*self.args, contest=self.contest, user=self.user, program=self.program, **self.kwargs)

    def cmd_join(self, what):
        cmd = re.match('^\s*JOIN\s+(?P<contest>\d+)\s*$',
            what, re.I)

        if cmd:
            contest_id = cmd.group('contest')

            if not self.user:
                return "LOGIN REQUIRED\n", self

            try:
                self.contest = Contest.objects.get(pk=contest_id)
            except Contest.DoesNotExist:
                return "FAIL INVALID_CONTEST\n", self

            if self.contest.default_judge is None:
                return "FAIL INVALID_CONTEST\n", self

            return "OK\n", self

    def cmd_login(self, what):
        cmd = re.match('^\s*LOGIN\s+(?P<user>[^\s]*)\s+PASSWORD\s+(?P<password>[^\s]*)\s*$',
            what, re.I)

        if cmd:
            username = unquote(cmd.group('user'))
            password = unquote(cmd.group('password'))

            user = authenticate(username=username, password=password)

            if not user:
                return "FAIL INVALID_PASSWORD\n", self

            self.user = user

            return "OK\n", self
