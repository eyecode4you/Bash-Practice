#!/bin/bash
systemctl is-system-running # view sys status, degraded means not all needed services in a target are currently running

# Basic Shutdown cmds
# shutdown [options] [time] [message]
    # time format: +minutes, minutes, hh:mm
    # processes are stopped, CPU halted, hardware powered off
# halt cmd equivalent to shutdown --halt
# poweroff cmd equivalent to shutdown -p
# reboot cmd shuts down and restarts system
