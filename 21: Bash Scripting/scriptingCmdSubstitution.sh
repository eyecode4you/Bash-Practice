#!/bin/bash
# Using variables:
# varA="ls /etc/s*.conf"
# echo $varA
#
echo "Command Substitution"
#
commandSubA="file /etc/s*.conf"
echo $commandSubA
$commandSubA # running the cmd within the script
#
#
# Built CMDs & TRUE CMD Substitution
echo "True Command Substitution"
#
commandSubB=$(file /etc/s*.conf)
echo $CommandSubB
#
exit
