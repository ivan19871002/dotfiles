#!/usr/bin/python

import os, sys, re, StringIO
import fcntl, termios, struct

class COLOR:
    WHITE = '\033[37m'
    GRAY = '\033[36m'
    BLUE = '\033[34m'
    GREEN = '\033[92m'
    YELLOW = '\033[33m'
    RED = '\033[91m'
    ENDC = '\033[1;m'


# to pick up -d or -e
adb_args = ' '.join(sys.argv[1:])
adb_args2 = ' '.join(sys.argv[2:])

# if someone is piping in to us, use stdin as input.  if not, invoke adb logcat
if os.isatty(sys.stdin.fileno()):
    input = os.popen("adb %s logcat %s" % (adb_args, adb_args2))
else:
    input = sys.stdin

while True:
    try:
        line = input.readline()
    except KeyboardInterrupt:
        break

    if len(line) == 0: break;
    else:
        outcolor = COLOR.GRAY
        if line[0] == 'E':
            outcolor = COLOR.RED
        elif line[0] == 'D':
            outcolor = COLOR.WHITE
        elif line[0] == 'V':
            outcolor = COLOR.GRAY
        elif line[0] == 'W':
            outcolor = COLOR.YELLOW
        elif line[0] == 'I':
            outcolor = COLOR.GREEN
        line = line.strip()
        print outcolor + line + COLOR.ENDC
