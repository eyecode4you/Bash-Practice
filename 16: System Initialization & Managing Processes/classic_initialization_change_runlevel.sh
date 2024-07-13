#!/bin/bash
# Viewing default runlevel config in /etc/inittab
grep ^id /etc/inittab # will show sys default runlevel

# Viewing current & past sys runlevel
sudo runlevel # 1st no.: Prev. runlevel (N for new boot), 2nd no.: Current runlevel

# Changing runlevels
sudo init 3 # runlevel 3, no GUI
telinit 5 # telinit cmd equivalent to init cmd

# View status & manage services
service syslog status # service [name] [start, stop, status]
