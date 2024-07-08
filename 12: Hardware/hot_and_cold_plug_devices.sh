#!/bin/bash
# udev sets up cold plug devices, to view info requires admin
su -c "udevadm info /dev/sda1 | less"

# view hot plug USB device:
su -c "udevadm info /dev/sdb1 | less"
ls -d /media # hot plug devices are auto-mounted here

# udev will check here if no config rules are provided for a device:
ls /etc/udev/rules.d

# check dbus service
systemctl status dbus
