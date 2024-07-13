#!/bin/bash
# Viewing default runlevel config in /etc/inittab
grep ^id /etc/inittab # will show sys default runlevel

# Viewing current & past sys runlevel
sudo runlevel # 1st no.: Prev. runlevel (N for new boot), 2nd no.: Current runlevel

# Change runlevel
# View status & manage services
