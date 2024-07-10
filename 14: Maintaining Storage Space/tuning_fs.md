## Tuning a File System
! Unmount a fs before modifying its parameters !

### mke2fs cmd
- create/format ext filesystems
- can modify fs parameters before creation
- man mke2fs

### tune2fs cmd
- Tune parameters of existing ext filesystems
- sudo tunefs -l /dev/sda # view
- not all params can be modded after formatting
- man tune2fs

### For XFS Filesystems
- improve arrangement with xfs_fsr
- tune params with xfs_admin

### For btrfs
- improve with btrfs balance
- tune with btrfstune
