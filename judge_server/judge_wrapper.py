
import sys
from subprocess import PIPE, Popen
from threading  import Thread
from Queue import Queue, Empty

QUEUE_SIZE = 10

def enqueue_input(myin, queue):
    for line in iter(myin.readline, b''):
        print line
        queue.put(line.decode())
    myin.close()

def enqueue_output(myout, queue):
    while True:
        temp = queue.get()
        myout.write(temp.encode())
        myout.flush()
    myout.close()

class ProgramHolder:
    """Class for wrapping the external process"""
    def __init__(self, program_name):
        self.program_name = program_name
        self.judge = Popen([program_name], stdout=PIPE, stdin=PIPE)
        self.judge.daemon = False
            #stderr=PIPE  - add this after end of debugging
        self.in_queue = Queue(maxsize = QUEUE_SIZE)
        self.in_thread = Thread(target=enqueue_input, 
                            args=(self.judge.stdout, self.in_queue))
        self.in_thread.daemon = False # Wrapper ends life if programs breaks it's output pipe
        self.in_thread.start()
        self.out_queue = Queue(maxsize = QUEUE_SIZE)
        self.out_thread = Thread(target=enqueue_output,
                            args=(self.judge.stdin, self.out_queue))
        self.out_thread.daemon = True
        self.out_thread.start()
    def write(self, data_line):
        self.out_queue.put(data_line)
    def read(self):
        return self.in_queue.get(block=True)
    def kill(self):
        self.judge.kill()


