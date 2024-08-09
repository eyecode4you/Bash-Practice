#!/bin/bash
#
# Building commands within a script.
#
echo "Method 1: \$()"
#
file $(ls /etc/s*.conf)
#
echo
echo "Method 2: Backticks"
#
file `ls /etc/s*.conf`
#
echo
echo "Method 3: xargs"
#
ls /etc/s*.conf | xargs file
#
exit
