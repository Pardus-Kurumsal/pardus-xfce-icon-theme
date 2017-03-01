#!/usr/bin/env python

import sys
import subprocess as sb

if __name__ == '__main__':
    with open(sys.argv[1]) as f:
        for l in f:
            sym_tar = l.split()
            target = sym_tar[1]
            linkname = sym_tar[0]
            sb.check_output(['ln', '-fs', target, linkname], stderr=sb.STDOUT)
