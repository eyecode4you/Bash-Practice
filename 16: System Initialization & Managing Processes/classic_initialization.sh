#!/bin/bash
ls -d /etc/rc.d/rc?.d
# will show dirs rc0.d, rc1.d, etc. used for the different runlevels
# In these dirs are the services that are started (S) or killed (K) in numbered order
# Services listed in these dirs are symbolic links
ls -l /etc/rc.d/rc3.d/*syslog
readlink -f /etc/rc.d/rc3.d/*syslog # /etc/rc.d/init.d/syslog

# /etc/rc.d/init.d containes the scripts used in runlevel dirs
# To modify a script, instead of going into each runlevel dir, change it here
ls /etc/rc.d/init.d
