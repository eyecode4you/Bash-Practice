## Passing Kernel Parameters with GRUB Legacy & GRUB2 Bootloaders
Boot/Reboot to enter bootloader menu

### Kernel Params
Edit the kernel line (e.g. vmlinuz-etc.) of chosen OS, e key for edit, Enter to save changes, b to boot from selection
- quiet: whether to display boot log as system boots
- 1, S, single, or systemd.unit=rescue: single-user/rescue mode, no one else can log into system other than root user (on older systems, no root pass is required!)
- systemd.unit=emergency: Launch in emergency mode (only root)
- All Kernel Params: www.kernel.org/doc/Documentation/admin-guide/kernel-parameters.txt


### Emergency vs. Rescue
#### Rescue (often run when disk repair util needs to be run, e.g. fsck)
- Only root
- No Net. services; only a few services started
- All filesystems mounted as Read/Write

#### Emergency
- Only root
- No Net. services; only a few services started
- Only root filesystem is mounted, read-only
