#!/bin/bash
# check ext fs integrity with fsck (file system check) cmd. Ensure target is unmounted!
mount | grep sdc2 # check if target fs is mounted
sudo fsck -r /dev/sdc2 # status 0 means no errors, -r provides report, -c progress bar

# can also use e2fsck
sudo e2fsck /dev/sdc2

# for XFS
# xfs_repair -> check and repair
# xfs_db or xfs_repair -n -> only check

# for btrfs
# btrfs check -> check + repair
# btrfsck (deprecated) -> check + repair
