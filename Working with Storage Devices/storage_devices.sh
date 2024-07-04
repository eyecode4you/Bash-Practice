#!/bin/bash
lsblk # shows storage disks & partitions (lvm indicates a logical volume or grouped partitions)
lsblk -f # shows filesystem info for storage devices

cat /proc/partitions # contains sys info related to disks & partitions
cat /proc/filesystems # shows current filesystems in use by devices

free -h # shows RAM & SWAP info
