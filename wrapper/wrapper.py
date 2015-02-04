#!/bin/env python2

import sys
from subprocess import PIPE, Popen
from threading  import Thread
from Queue import Queue, Empty

import socket
from program_holder import ProgramHolder

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


def receive_from_remote(remote_socket, out):
    for line in split_socket(remote_socket):
        out.write(line)
    remote_socket.close()

def send_to_remote(remote_socket, queue):
    while True:
        temp = queue.get()
        remote_socket.send(temp)
    remote_socket.close()


class Wrapper:
    def __init__(self, program_name, address, contest_id, username, password, port):
        self.program_name = program_name
        self.address = address
        self.contest_id = contest_id
        self.username = username
        self.password = password

        self.program = ProgramHolder(self.program_name)

        self.socket = socket.socket()
        self.socket.connect((self.address, port))

        self.socket.send("join "+contest_id+" as "+username+" password "+password+"\n")
        tmp = self.socket.recv(1024)

        if tmp.strip() != "OK":
            raise Exception("Unexpected message from server: " + tmp)
        else:
            print "Logged in"
        
        self.remote_in = Thread(target=receive_from_remote,
                            args=(self.socket, self.program))
        self.remote_in.setDaemon(True)
        self.remote_in.start()

        self.remote_out = Thread(target=send_to_remote,
                            args=(self.socket, self.program.in_queue))
        self.remote_out.setDaemon(True)
        self.remote_out.start()

        self.program.in_thread.join()


if __name__ == '__main__':
    A = Wrapper(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], port=PORT)






