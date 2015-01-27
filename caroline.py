#!/usr/bin/env python

import argparse
import os
import sys

PROJECT_NAME = 'glados'
os.environ.setdefault('DJANGO_SETTINGS_MODULE', PROJECT_NAME+'.settings')

import django
from judge_server import Server


def main():
    django.setup()
    parser = argparse.ArgumentParser()
    parser.add_argument('--host', default='')
    parser.add_argument('--port', type=int, default=8895)

    args = parser.parse_args(sys.argv[1:])

    print("host: {}".format(args.host))
    print("port: {}".format(args.port))

    print("starting server...")

    server = Server(args.host, args.port)
    server.start()
    running = True

    print("server started")
    try:
        while running:
            cmd = raw_input()
            if cmd == 'stop':
                running = False
            else:
                print "unknown command"
    except KeyboardInterrupt:
        pass

    print("stopping server...")
    server.shutdown()


if __name__ == '__main__':
    main()
