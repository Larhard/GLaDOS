import re


class ParserBase:
    def __init__(self, client):
        self.client = client

    def parse(self, what):
        """
        @param what: string to parse
        @return: None or new parser
        """
        pass


class SimpleContestParser(ParserBase):
    def __init__(self, client, contest_id, user_id):
        ParserBase.__init__(self, client)
        self.contest_id = contest_id
        self.user_id = user_id

    def parse(self, what):
        print "send {} to judge".format(what)


class SimplePlayerParser(ParserBase):
    def parse(self, what):
        cmd = re.match('^\s*join\s+(?P<contest>\d+)\s+as\s+(?P<user>\d+)\s*$', what)
        if cmd:
            self.client.conn.send('ok\n')
            return SimpleContestParser(self.client,
                                       cmd.group('contest'),
                                       cmd.group('user')
                                       )

        self.client.conn.send('wtf\n')
