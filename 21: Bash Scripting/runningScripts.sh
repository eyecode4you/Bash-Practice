#!/bin/bash
#
# Demo of what happens when a script runs.
pwd
#
echo
echo "The shell level is: "$SHLVL
echo
#
exit
#
# Running Scripts:
# Scripts in Current Working Dir:
# bash runningScripts.sh - We see that the script creates a subshell (lvl 2)
#
# chmod u+x runningScripts.sh
# ./runningScripts.sh
#
# Scripts in a different dir:
# /home/bob/runningScripts.sh - specify absolute dir ref
#
# For scripts that are to be used by other admins:
# 1: Create a new dir for storing scripts and add it to $PATH
# 2: Modify $PATH so it will be set for all admins
# Note: You Should NOT include home dirs in $PATH
#
# Once a script source is added to $PATH, you can simply call it by name:
# export PATH=$PATH:/home/bob
# runningScripts.sh
#
# Sourcing Scripts (running without entering a subshell)
# bash
# source runningScripts.sh - will force exit of subshell when done
#
# bash
# . runningScripts.sh - will force exit of subshell when done
#
# bash
# exec ./runningScripts.sh - will force exit of subshell when done
