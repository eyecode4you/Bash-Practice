#!/bin/bash
lsblk # view storage devices on system
lsblk -s # view dependencies in inverse order
ls /dev # view storage devices files on system
cat /proc/partitions # view partition info
lsblk -f # view filesystems in use
ls /dev/disk/by-id # devices by WWID
ls /dev/disk/by-uuid # devices by UUID
ls /dev/disk/by-path # devices by attachment to PCI Bus
ls /dev/disk/by-label # devices by label (if used)

lsblk -p # see if volumes on system are used in LVM
ls -l /dev/mapper

which lsdev # check if lsdev utility is available
lsdev

# files lsdev uses to get info:
cat /proc/dma
cat /proc/interrupts
cat /proc/ioports
