#!/bin/env python2

import argparse
import getpass
import sys
import re
from wrapper import Wrapper

DEFAULT_CAROLINE_PORT = 8895


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('program')
    parser.add_argument('contest')
    parser.add_argument('account', metavar='username@host')
    parser.add_argument('--port', '-p', default=DEFAULT_CAROLINE_PORT,
        help='default port is {}'.format(DEFAULT_CAROLINE_PORT), type=int)
    args = parser.parse_args(sys.argv[1:])
    rmatch = re.match('^(?P<username>.*)@(?P<host>[^@]*)', args.account)
    if not rmatch:
        parser.error('unrecognized account {}'.format(args.account))

    args.username = rmatch.group('username')
    args.host = rmatch.group('host')

    # run wrapper
    args.password = getpass.getpass('password: ')
    A = Wrapper(program_name=args.program, address=args.host, contest_id=args.contest,
        username=args.username, password=args.password, port=args.port)

if __name__ == '__main__':
    main()
