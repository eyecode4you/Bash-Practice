#!/bin/bash
#
# 2 methods to declare functions in bash:
# 1: function [function name]{
#             [commands]
# }
#
# 2: [function name](){
#             [commands]
# }
#
#
# ****************A SCRIPT WITHOUT FUNCTIONS*******************
fileToList="/etc/S*.conf"
usrToFind="jdoe"
echo
echo "Trying to list file: "$fileToList
echo
#
ls $fileToList 2>/dev/null
#
if [ $? == 0 ]
   then
        result=0
        echo "No errors"
   else
        result=1
        echo "Cannot list file"
fi
#
echo
echo "Looking for user "$usrToFind" in passwd file"
echo
#
getent passwd $usrToFind || (echo "User not found"; result=1)
#
exit $result
#
#
# ****************A SCRIPT WITH FUNCTIONS************************
function handleError {
         echo "Error occured: " $1 $2
         result=1
}
#
fileToList="/etc/S*.conf"
usrToFind="jdoe"
echo
echo "Trying to list file: "$fileToList
echo
#
ls $fileToList 2>/dev/null
#
if [ $? == 0 ]
   then
        result=0
        echo "No errors"
   else
        handleError $fileToList "file not found..."
fi
#
echo
echo "Looking for user "$usrToFind" in passwd file"
echo
#
getent passwd $usrToFind || handleError $usrToFind "user not found..."
#
exit $result
