#!/bin/bash
touch file.txt

# using symbolic mode
chmod u+x file.txt # add ex perm for owner
chmod o-r file.txt # remove read perm. for other
chmod a=rw file.txt # set r & w for all
chmod u+r,g-x file.txt # add r for owner, remove ex for group
