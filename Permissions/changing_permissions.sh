#!/bin/bash
touch file.txt
ls -l file.txt

# using symbolic mode (u-owner, g-group, o-other, a-all)
chmod u+x file.txt # add ex perm for owner
ls -l file.txt
chmod o-r file.txt # remove read perm. for other
ls -l file.txt
chmod a=rw file.txt # set r & w for all, eliminates all other perms
ls -l file.txt
chmod u=rw,go=r file.txt
ls -l file.txt
chmod u+r,g-x file.txt # add r for owner, remove ex for group
ls -l file.txt

# using octal mode (0-none, 1-x, 2-w, 4-r) (3-wx, 5-rx, 6-rw, 7-rwx)
chmod 764 file.txt # rwxrw-r--
ls -l file.txt
chmod 640 file.txt # rw-r-----
ls -l file.txt

rm file.txt
