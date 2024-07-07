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
