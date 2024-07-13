#!/bin/bash
systemctl is-system-running # view sys status, degraded means not all needed services in a target are currently running

# Basic Shutdown cmds
# shutdown [options] [time] [message]
    # time format: +minutes, minutes, hh:mm
    # processes are stopped, CPU halted, hardware powered off
# halt cmd equivalent to shutdown --halt
# poweroff cmd equivalent to shutdown -p
# reboot cmd shuts down and restarts system

which halt
ls -l /usr/sbin/halt
ls -l /usr/sbin/poweroff
ls -l /usr/sbin/reboot
ls -l /usr/sbin/shutdown
# these are all soft links to ../bin/systemctl

# systemd-style shutdown
        # Jump to a shutdown target (poweroff, halt, reboot):
        # systemctl isolate poweroff

# Signal ACPI Hardware
        # Advanced Configuration & Power Interface (ACPI) chipsets require use of special ACPI signals to shut down
        # ACPI daemon (acpid) sends signal to ACPI hardware
        # System shutdown trigger these signals
