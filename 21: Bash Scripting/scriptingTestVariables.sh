#!/bin/bash
echo
echo "Does var flowControl exist?"
echo
#
if [ $flowControl ]
   then
        echo "yes"
        echo "no"
   else
        echo "Var does not exist, creating it now..."
        flowControl="newValue"
        echo
        echo "The var is now set to"$flowControl
fi
#
echo
echo "Does string in flowControl equal 'newValue'?"
echo
#
if [ $flowControl = "newValue" ]
   then echo "yes"
   else echo "no"
fi
#
echo
echo "End of script"
#
exit
