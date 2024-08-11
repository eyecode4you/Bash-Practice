#!/bin/bash
# Demo of handling input via passed params
# program name stored in $0, 1st param in $1, 2nd param in $2, etc.
if [ -n "$1" ] # if param was passed
   then echo "First param is: "$1
   else
        echo "No params passed to script: "$0
        exit
fi
#
if [ -n "$2" ]
   then echo "2nd param is: "$2
fi
#
if [ -n "$3" ]
   then echo "3rd param is: "$3
fi
#
exit
