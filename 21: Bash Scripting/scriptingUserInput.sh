#!/bin/bash
#
# 1: Using echo & read
echo -n "Please enter your name: "
read userName
#
echo "Hello, "$userName
#
#
# 2: read -p
read -p "What is your favourite shell? " favShell
echo "I also like "$favShell
#
exit
