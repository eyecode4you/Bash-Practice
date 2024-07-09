#!/bin/bash
cat /proc/partitions # view system partition info
lsblk | grep -E "sd[abc]?" # view disks & partitions etc.

# partitions can be created with the gdisk utility (requires admin)
# e.g. sudo gdisk /dev/sdb
# sudo gdisk -l /dev/sdb # can be used to list partition info

# another utility is fdisk
# e.g. sudo fdisk /dev/sdc
# sudo fdisk -l /dev/sdc

# another is the parted utility
# e.g. sudo parted /dev/sdc
