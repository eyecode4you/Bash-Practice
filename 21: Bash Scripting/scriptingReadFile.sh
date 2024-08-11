#!/bin/bash
# e.g. read file "colours.txt"
cat $HOME/colours.txt | while read fileLine
do
    echo "Colour: "$fileLine
done
#
exit
