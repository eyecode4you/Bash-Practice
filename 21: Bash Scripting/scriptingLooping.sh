#!/bin/bash
#
# FOR LOOP:
for loopVar in A B C D E F
do
    echo "Letter is: "$loopVar
done
echo
#
#
# FOR LOOP with seq (sequence) cmd:
for loopVar in $(seq 1 6)
do
    echo "Number is: "$loopVar
done
echo
#
#
# WHILE LOOP:
loopVar=1
while [ $loopVar -ne 10 ]
do
    echo "Number is: "$loopVar
    loopVar=$[ $loopVar + 1 ]
done
echo
#
#
# UNTIL LOOP:
loopVar=1
until [ $loopVar -eq 100000 ]
do
    echo "Number is: "$loopVar
    loopVar=$[ $loopVar * 10 ]
done
#
exit
