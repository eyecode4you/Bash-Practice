#!/bin/bash
ls -l /dev/sda /dev/tty2
# sda is a block device - transfers data in blocks
# tty2 is a character device - transfers data one character at a time (stream)

lsblk
# MAJ number identifies device's class/type such as disk, logical volume, or optical device
# MIN number identifies individual device in a class

# proc files are in a pseudo filesystem - mounted in RAM, rebuilt upon system boot
# you can view a list of all MAJ numbers used for devices in:
cat /proc/devices

# data concerning system's RAM, also where free cmd gets info:
cat /proc/memdata

# another pseudo filesystem is sysfs: /sys
ls /sys/block # info on attached block devices

# e.g. getting a partition's sector size, block size, and multiplying to get size in MB:
cat /sys/block/sda/sda1/size # e.g. 1024000
lsblk -o NAME,LOG_SEC /dev/sda1 # e.g. 512
# bc 512 * 1024000 = 524288000
lsblk # size matches at ~ 500M

# to view device info in reverse dependency order:
lsblk -s
