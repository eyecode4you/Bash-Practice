#!/bin/bash
# view block devices on system:
lsblk

# look at where lsblk gets its info, sysfs:
ls -F /sys

# view block (b) and character (c) devices attached to system:
ls -l /dev

# view attached PCI devices:
lspci

# view attached USB devices:
lsusb

# see if any USB devices are mounted:
ls /media

# look at kernel modules stored on system:
ls -F /lib/modules/*/kernel/drivers

# view currently installed modules:
lsmod

# get detailed info on an installed module:
# modinfo [kernel-module-name]

# view udev rules:
ls /etc/udev/rules.d

# see if DBus is running:
systemctl status dbus
