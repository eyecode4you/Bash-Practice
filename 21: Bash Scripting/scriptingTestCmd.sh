#!/bin/bash
# With the test cmd you can conduct:
#  - Access permission tests
#  - File type tests
#  - File characteristic tests
#  - Numeric tests
#  - String tests
#
# test -f /etc/passwd -> check if passwd file exists
# echo $?
#
# test cmd will return exit status 0 for true, 1 for false, and 2 for error
#
echo "test cmd: Does /etc/passwd exist?"
#
if test -f /etc/passwd
   then echo "It exists"
   else echo "It doesn't exist"
fi
#
echo
echo "end of script"
exit
#
# can also use [ ] notation for test cmd:
# [ -f /etc/passwd ]
