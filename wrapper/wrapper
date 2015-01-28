#!/bin/env python2

import sys
from subprocess import PIPE, Popen
from threading  import Thread
from Queue import Queue, Empty

import socket

QUEUE_SIZE = 10
PORT = 8895

def split_socket(conn):
    get_data = lambda: conn.recv(1024)

    ext = get_data()
    buff = ext 

    while ext:
        while '\n' in buff:
            line, buff = buff.split('\n', 1)
            yield line
        ext = get_data()
        buff += ext 

    yield buff


def enqueue_input(myin, queue):
    for line in iter(myin.readline, b''):
        queue.put(line.decode())
    myin.close()

def enqueue_output(myout, queue):
    while True:
        temp = queue.get()
        myout.write(temp.encode())
        myout.flush()
    myout.close()

def receive_from_remote(remote_socket, queue):
    for line in split_socket(remote_socket):
        queue.put(line) 
    remote_socket.close()

def send_to_remote(remote_socket, queue):
    while True:
        temp = queue.get()
        remote_socket.send(temp)
        remote_socket.flush()
    remote_socket.close()

class ProgramHolder:
    """Class for wrapping the external process"""
    def __init__(self, program_name):
        self.program_name = program_name
        self.player = Popen([program_name], stdout=PIPE, stdin=PIPE, 
                bufsize=1)
        self.player.daemon = False
            #stderr=PIPE  - add this after end of debugging
        self.in_queue = Queue(maxsize = QUEUE_SIZE)
        self.in_thread = Thread(target=enqueue_input, 
                            args=(self.player.stdout, self.in_queue))
        self.in_thread.daemon = False # Wrapper ends life if programs breaks it's output pipe
        self.in_thread.start()
        self.out_queue = Queue(maxsize = QUEUE_SIZE)
        self.out_thread = Thread(target=enqueue_output,
                            args=(self.player.stdin, self.out_queue))
        self.out_thread.daemon = True
        self.out_thread.start()
    def send(self, data_line):
        self.out_queue.put(data_line)
    def read(self):
        return self.in_queue.get(block=True)
    def kill(self):
        self.player.kill()

class Wrapper:
    def __init__(self, program_name, address, contest_id, username, password):
        self.program_name = program_name
        self.address = address
        self.contest_id = contest_id
        self.username = username
        self.password = password

        self.program = ProgramHolder(self.program_name)

        self.socket = socket.socket()
        self.socket.connect((self.address, PORT))

        self.socket.send("join "+contest_id+" as "+username+" password "+password+"\n")
        tmp = self.socket.recv(1024)

        if tmp.strip() != "OK":
            raise Exception("Unexpected message from server: " + tmp)
        else:
            print "Logged in"
        
        self.remote_in = Thread(target=receive_from_remote,
                            args=(self.socket, self.program.out_queue))
        self.remote_in.daemon = True

        self.remote_out = Thread(target=send_to_remote,
                            args=(self.socket, self.program.in_queue))
        self.remote_out.daemon = True


if __name__ == '__main__':
    A = Wrapper(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])






