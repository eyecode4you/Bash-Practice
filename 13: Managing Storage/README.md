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
