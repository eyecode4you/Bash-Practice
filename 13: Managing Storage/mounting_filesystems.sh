#!/bin/bash
lsblk -f # view partitions & filesystems
sudo blkid # another way of doing this

# manually mount a filesystem
mkdir temp
sudo mount -t ext4 /dev/sdb1 temp # can also use a UUID instead of path with -U

# view all mounted fs
mount
mount | grep temp # search for a specific mount

# unmount fs
sudo umount temp # can also use /dev/sdb1 instead of temp

# auto-mounting fs
cat /etc/fstab # config used by OS for auto-mounting
sudo cp /etc/fstab /etc/fstab.bck # create a backup of fstab
sudo mkdir /newMount # make a new dir to mount to
sudo nano /etc/fstab # edit config
# e.g. adding: /dev/sdc2 /newMount ext4 defaults 0 0

sudo mount -a # will auto mount all unmounted fs in fstab
mount | grep newMount # check
# /dev/sdc2 will now auto-mount to newMount on boot
