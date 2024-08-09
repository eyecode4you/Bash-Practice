#!/bin/bash
# CMD Chaining allows you to run multiple cmds in same shell on same line:
# ls /etc/s*.conf; ls /etc/n*.conf - ; will execute regardless if one cmd produces error
#
# ls /etc/S*.conf && ls /etc/s*.conf - && will execute 2nd cmd ONLY if 1st succeeds
#
# ls /etc/S*.conf || ls /etc/s*.conf - || will execute 2nd cmd ONLY if 1st doesn't succeed
#
# Check status of last run cmd:
# echo $? - if 0, then no problems, if NOT 0, then problem
#
echo "CMD: ls /etc/s*.conf"
ls /etc/s*.conf || (echo "cmd didn't work :(" ; exit 42)
echo "Result: " $?
#
echo
echo "CMD: ls /etc/S*.conf"
ls /etc/S*.conf || (echo "cmd didn't work :(" ; exit 99)
echo "REsult: " $?
#
exit # you can pass a number to exit to set exit status, e.g. exit 7, 0 to 255
