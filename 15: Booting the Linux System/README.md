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

### Classic System Initialization
- SysVinit
- Runlevels 0-6, determines what groups of services are started. 0 is shutdown, 6 is full.
- Default runlevel set in /etc/inittab
- Change runlevels with init or telinit
