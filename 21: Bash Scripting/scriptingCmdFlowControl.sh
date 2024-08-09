#!/bin/bash
# basic if/then flow control
# IF-THEN-ELSE
echo "CMD: ls /etc/s*.conf"
if ls /etc/s*.conf
  then echo "CMD Success"
  else echo "CMD Fail"
fi
#
echo
echo "CMD: ls /etc/S*.conf"
if ls /etc/S*.conf
   then echo "CMD Success"
   else echo "CMD Fail"
fi
#
#
# NESTED IF-THEN-ELSE STATEMENTS
if ls /etc/S*.conf
   then
        echo
        echo "CMD Success"
        echo
   else
        echo
        echo "CMD Fail"
        echo
        echo "Trying ls /etc/s*.conf instead..."
        if ls /etc/s*.conf
           then
                echo
                echo "CMD Success"
           else
                echo
                echo "CMD Fail"
                echo "Check Syntax :("
        fi
fi
#
#
# ELIF STATEMENTS
echo "Trying ls /etc/S*.conf"
echo
if ls /etc/S*.conf
   then
        echo
        echo "CMD Success"
        echo
   elif ls /etc/s*.conf
        then
             echo
             echo "Use ls /etc/s*.conf instead..."
fi
#
echo
echo "End of script"
#
exit
