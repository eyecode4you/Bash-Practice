#!/bin/bash
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3

ls -hs file?

# compression cmds, xz employs the most compression
gzip file1 # .gz
bzip2 file2 # .bz2
xz file3 #.xz

ls -hs file?.*
