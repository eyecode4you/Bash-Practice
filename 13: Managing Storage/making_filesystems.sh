#!/bin/bash
lsblk -f | grep -E "sd[abc]?" # list partitions & filesystems in use
ls /proc/filesystems # see which filesystems are supported
grep XFS /proc/filesystems # check if a specific filesystem is supporte

# if not, we can check if there's any kernel module for it:
ls /lib/modules/*/kernel/fs

# e.g. make an ext4 fs for sdb1
# sudo mkfs -t ext4 /dev/sdb1
# sudo mkfs.ext4 /dev/sdc2 # can also use . method

# e.g. maing a swap partition:
# sudo mkswap /dev/sdc3
