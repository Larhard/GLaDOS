from django.contrib.auth import authenticate
from judge_server.match_manager import SimpleMatchDB
import re


class ParserBase(object):
    def __init__(self):
        pass

    def parse(self, what):
        """
        @param what: string to parse
        @return: (reply message, None or new parser)
        """
        cmd_regex = re.compile('^cmd_')
        commands = [k for k in dir(self) if cmd_regex.match(k)]
        for cmd_name in commands:
            cmd = getattr(self, cmd_name)
            res = cmd(what)
            if res is not None:
                return res
        return 'FAIL', self


class ContestParser(ParserBase):
    match_db = SimpleMatchDB()

    def __init__(self, contest_id, user_id):
        super(ContestParser, self).__init__()
        self.contest_id = contest_id
        self.user_id = user_id
        self.match_session = self.match_db.get_match_session(self.contest_id, self.user_id)


class InitParser(ParserBase):
    def cmd_help(self, what):
        cmd = re.match('^\s*help\s*$', what, re.I)
        if cmd:
            reply = ""
            reply += "JOIN <contest_id> AS <user_id>\n"
            return reply, self

    def cmd_join(self, what):
        cmd = re.match('^\s*join\s+(?P<contest>\d+)\s+as\s+"(?P<user>[^"]*)"\s+PASSWORD\s+"(?P<password>[^"]*)"\s*$',
            what, re.I)

        if cmd:
            username = cmd.group('user')
            password = cmd.group('password')
            contest = cmd.group('contest')

            user = authenticate(username=username, password=password)
            if user:
                return "OK\n", ContestParser(contest, user)
            else:
                return "FAIL INVALID_PASSWORD\n", self
