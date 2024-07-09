## Managing Storage

### Partition Table (Type)
- Data structure on disk
- Managed by OS
- Contains partition location & size
- OS reads a disk's partition table first

#### Master Boot Record (MBR)
- Table stored in first sector on disk
- Size limit ~2.2TB
- Partition types: Primary, Extended, and Logical

#### Globally Unique Id (GUID) Partition Table (GPT)
- Table header stored in 2nd disk sector; entries stored in 3rd - 34th disk sector
- Supports disks > 2.2TB; unlimited no. of partitions
- No partition types
- Copies table to last disk sectors for protection

### Auto-Mounting Filesystems
Config handled in: /etc/fstab
- Id fs by: Device path (e.g. /dev/sdb1), UUID (e.g. UUID=g7625-62gug), Label (e.g. LABEL=G-usb)
- Options are comma-sep
- Dump: If not 0, use dump util to backup fs
- Pass: If not 0, use fsck util to check fs by priority
#### /etc/fstab Options:
- defaults: async, auto, dev, exec, nouser (user without su cannot mount), rw, suid
- user: allow a user to mount fs
- owner: allow an owner to mount fs
- noauto: prevent fs from auto-mounting
