import sys
from subprocess import PIPE, Popen
from threading  import Thread
from Queue import Queue, Empty

QUEUE_SIZE = 10
TERMINATE_TIMEOUT = 3


def enqueue_input(myin, queue):
    for line in iter(myin.readline, b''):
        queue.put(line.decode())
    myin.close()


def enqueue_output(myout, queue, poll=None):
    try:
        while True:
            temp = queue.get()
            myout.write(temp.encode())
            myout.flush()
    except IOError as e:
        if poll is None or poll() is None:
            raise e
    myout.close()


class ProgramHolder:
    """Class for wrapping the external process"""
    def __init__(self, program_name):
        self.program_name = program_name
        self.program = Popen([program_name], stdout=PIPE, stdin=PIPE, shell=True)
        self.program.daemon = False
        #stderr=PIPE  - add this after end of debugging
        self.in_queue = Queue(maxsize = QUEUE_SIZE)
        self.in_thread = Thread(target=enqueue_input,
            args=(self.program.stdout, self.in_queue))
        self.in_thread.setDaemon(True)
        self.in_thread.start()
        self.out_queue = Queue(maxsize = QUEUE_SIZE)
        self.out_thread = Thread(target=enqueue_output,
            args=(self.program.stdin, self.out_queue, self.program.poll))
        self.out_thread.setDaemon(True)
        self.out_thread.start()

    def write(self, data_line, end='\n'):
        if len(data_line) == 0 or data_line[-1] != end:
            data_line += end
        self.out_queue.put(data_line)

    def read(self):
        return self.in_queue.get(block=True)

    def kill(self):
        self.program.kill()

    def close(self):
        if self.program.poll() is None:
            self.program.terminate()
            res = self.program.wait()  # TODO timeout
            if res is None:
                self.program.kill()
                res = self.program.wait()  # TODO timeout
            if res is None:
                print " ::: ERROR ::: {} ({}) could not be terminated".format(self.program_name, self.program.pid)

    def __del__(self):
        self.close()
