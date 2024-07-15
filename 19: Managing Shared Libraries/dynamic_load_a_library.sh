#!/bin/bash
# path to the dynamic linker
ls -F /lib64
# ld-linux-x86_64.so.2@ - @ means this is a binary file
# with this file we can load libraries for other binaries/apps

# to view a binary's or app's needed libraries, use ldd
which ps
ldd /bin/ps # shows name & location of needed libraries for ps

# using the dynamic loader:
/lib64/ld-linux-x86_54.so.2 /bin/ps # finds and loads libraries for ps 
