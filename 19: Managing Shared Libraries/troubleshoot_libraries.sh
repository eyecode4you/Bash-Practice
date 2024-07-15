#!/bin/bash
# get absolute ref of faulty program e.g. man
which man

# find needed libs with ldd
ldd /usr/bin/man

# view libs in lib cache
ldconfig -p
ldconfig -p | grep libz.so.1 # see if particular lib is installed
