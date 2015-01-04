import re


class ParserBase:
    def __init__(self, client):
        self.client = client

    def parse(self, what):
        return self


class SimplePlayerParser(ParserBase):
    def parse(self, what):
        cmd = re.match('^\s*join\s+(?P<contest>\d+)\s+as\s+(?P<user>\d+)\s*$', what)
        if cmd:
            print cmd.group('contest')
            print cmd.group('user')
            return self

        self.client.conn.send('wtf\n')
        return self
