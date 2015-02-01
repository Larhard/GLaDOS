import threading
from wrapper.program_holder import ProgramHolder


class JudgeWrapper(object):
    def __init__(self, judge_path, match):
        self.judge_path = judge_path
        self.match = match
        self.program = ProgramHolder(self.judge_path)
        self.reader_thread = threading.Thread(target=self.reader)

    def reader(self):
        try:
            while True:
                line = self.program.read()
                self.match.send(line)
        except:
            pass

    def send(self, what):
        self.program.write(what)

    def close(self):
        self.program.close()
