#!/bin/bash
echo $USER
echo $LOGNAME
echo $PWD
echo $PS1 # determines prompt's display, e.g. $

echo $EDITOR # often not set by default. Sets the default text editor used by some programs.
echo $VISUAL # Same. Sets the default full-screen text editor (e.g. vi, nano) used by some system programs.

env | less # shows list of all environment variables

printenv | less # can also be used
printenv HOME # printenv can be used to view individual env variables, note: doesn't use $ in front

set | less # also shows env variables

# can view env var paths with ls
ls $HISTFILE

locale # shows all locale-related env vars
