## Booting the Linux System

### The Boot Process, Simplified
- Firmware conducts POST
- Looks for bootloader program on bootable device
- Bootloader loads Linux kernel program
- Linux kernel prepares
- Linux kernel performs system initilalization
- Services start

### Classic Boot
- BIOS firmware
- Bootloader is in MBR
- MBR is on the first sector of the boot drive
- Chainloading typically used

### Bootloader Programs
- LILO (deprecated, only supports BIOS)
- GRUB Legacy
- GRUB2
- Systemd Bootloader
