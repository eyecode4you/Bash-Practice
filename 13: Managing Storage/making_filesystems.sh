#!/bin/bash
lsblk -f | grep -E "sd[abc]?" # list partitions & filesystems in use
ls /proc/filesystems # see which filesystems are supported
grep XFS /proc/filesystems # check if a specific filesystem is supporte

# if not, we can check if there's any kernel module for it:
ls /lib/modules/*/kernel/fs
