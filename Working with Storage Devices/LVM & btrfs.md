## Logical Volume Management/manager (LVM)
- Uses Logical Volumes (LVs)
- LVs have space portions from a Volume Group (VG)
- VGs are made up of multiple Physical Volumes (PVs)
- Pvs are disk partitions LVM uses in VGs

### LVM Basic Commands
- pvcreate: Designate partition as a PV
- vgcreate: Create VG of PVs
- vgextend: Add PV to VG
- lvcreate: Create logical volume
- lvm --help: Show all LVM cmds

/dev/mapper maps physical blocks of a partition to logical blocks in a logical volume

mapper files are softlinks to dm (device mapper) files
