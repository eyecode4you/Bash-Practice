#!/bin/bash
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3

# list files with human-readable sizes
ls -hs file?

# compression cmds, xz employs the most compression
gzip file1 # .gz
bzip2 file2 # .bz2
xz file3 # .xz

# list files which now have new extensions
ls -hs file?.*

# Uncompressing files
gunzip file1
bunzip2 file2
unxz file3
