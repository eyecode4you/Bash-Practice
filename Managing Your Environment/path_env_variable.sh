#!/bin/bash
echo $PATH # shows a series of dirs where system will check to run cmds

which echo
cp /bin/echo myecho
myecho "This won't work" # as our home dir isn't part of the $PATH var, copying and running a cmd from here won't work
# we could run this by providing absolute ref. to new cmd /home/USERNAME/myecho "This will now work"

# to add a dir to $PATH
# PATH = $PATH:[Path of directory to add]
# e.g. adding home dir to path (not for practical use): PATH = $PATH:/home/USERNAME
# adding to PATH this way is non-persistent, must use environment file
