#!/bin/bash
secondVar="world"
#
echo
echo "Are vars firstVar or secondVar empty?"
#
if [ -z "$firstVar" ] || [ -z "$secondVar" ] # -z checks if var is empty
   then echo "Either var is empty"
   else echo "Neither var is empty"
fi
#
firstVar="hello"
#
echo
echo "Do both vars have content?"
#
if [] && []
   then
        echo "Both have content"
        echo "They are set to: "$firstVar" "$secondVar
   else echo "Either are undefined"
fi
#
echo
echo "End of script"
#
exit
