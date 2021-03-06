import socket
import threading
import weakref
from judge_server.match_manager import MatchManager

from judge_server.parser import InitParser


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


class ClientThread(threading.Thread):
    def __init__(self, conn, addr, server):
        super(ClientThread, self).__init__()
        self.server = server
        self.conn = conn
        self.addr = addr
        self.parser = InitParser(connection=self, match_manager=self.server.match_manager)
        self.send_lock = threading.RLock()

    def send(self, what):
        """
        thread safe send message
        """
        with self.send_lock:
            self.conn.send(what)

    def run(self):
        print "{} [{}] connected".format(*self.addr)

        for line in split_socket(self.conn):
            reply, parser = self.parser.parse(line)
            self.send(reply)
            self.parser = parser or self.parser

        self.conn.close()
        print "{} [{}] disconnected".format(*self.addr)


class ServerThread(threading.Thread):
    def __init__(self, server):
        super(ServerThread, self).__init__()
        self.server = server
        self.sock = None
        self.running = False

        self.sock = socket.socket()
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.sock.bind((self.server.host, self.server.port))

        self.connections = weakref.WeakSet()

        self.match_manager = MatchManager()

    def run(self):
        self.running = True
        try:
            self.sock.listen(1)
            while self.running:
                conn, addr = self.sock.accept()
                client_thread = ClientThread(conn, addr, self)
                client_thread.setDaemon(True)
                client_thread.start()
                self.connections.add(conn)
        except OSError as msg:
            print msg
        except socket.error:
            pass

        for conn in self.connections:
            conn.close()
        self.sock.close()
        print "Server Stopped"

    def shutdown(self):
        self.running = False
        self.sock.shutdown(socket.SHUT_RDWR)
        self.join()
        self.match_manager.close()


class ServerBase:
    def __init__(self, host, port):
        self.sock = socket.socket()
        self.running = False
        self.host = host
        self.port = port
        self.server_thread = ServerThread(self)

    def start(self):
        if self.running:
            raise RuntimeError("Server already started")

        self.running = True
        self.server_thread.start()

    def shutdown(self):
        self.server_thread.shutdown()
