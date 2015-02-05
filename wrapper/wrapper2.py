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
    parser.add_argument('--password', '-P', help='dangerous, try not using it')
    parser.add_argument('--remote_program', '-r', help='remote program name to identify program', default=None)
    args = parser.parse_args(sys.argv[1:])
    rmatch = re.match('^(?P<username>.*)@(?P<host>[^@]*)', args.account)
    if not rmatch:
        parser.error('unrecognized account {}'.format(args.account))

    args.username = rmatch.group('username')
    args.host = rmatch.group('host')

    # run wrapper
    if not args.password:
        args.password = getpass.getpass('password: ')

    A = Wrapper(program_name=args.program, address=args.host, contest_id=args.contest,
        username=args.username, password=args.password, port=args.port, program=args.remote_program)

if __name__ == '__main__':
    main()
