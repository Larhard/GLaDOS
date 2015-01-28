class JudgeWrapper(object):
    def __init__(self, match):
        self.match = match

    def send(self, what):
        # broadcast echo for now
        self.match.send("0 judge received: {}\n".format(what))
