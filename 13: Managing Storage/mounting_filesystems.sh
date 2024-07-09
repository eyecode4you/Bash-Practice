#!/bin/bash
lsblk -f # view partitions & filesystems
sudo blkid # another way of doing this

# mount a filesystem
 mkdir temp
 sudo mount -t ext4 /dev/sdb1 temp # can also use a UUID instead of path with -U

# view all mounted fs
mount
mount | grep temp # search for a specific mount

# unmount fs
sudo umount temp # can also use /dev/sdb1 instead of temp
