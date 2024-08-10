#!/bin/bash
# Demo of file, numeric, and string tests
#
echo "Does /etc/passwd exist?"
#
if [ -f /etc/passwd ]
   then echo "it exists"
   else echo "it doesn't exist"
fi
#
echo
echo "Does 42 equal 24?"
#
if [ 42 -eq 24 ]
   then echo "yes"
   else echo "no"
fi
#
echo
echo "Does 'Chris' equal 'Sheva'?"
#
if [ 'Chris' = 'Sheva' ]
   then echo "yes"
   else echo "no"
fi
#
echo
echo "End of script"
#
exit
