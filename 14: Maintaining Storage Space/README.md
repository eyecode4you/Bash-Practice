## Maintaining Storage Space
Rules-of-thumb for mount points, and monitoring, verifying, and tuning the filesystem

Typical Linux system (FHS) has:
- /: root
- /boot: Boot loader files
- /etc: System and app config files
- /home: User files
- /media: Removable media
- /mnt: Removable media (older location)
- /opt: 3rd-party apps
- /tmp: Temporary files
- /usr: Linux program data
- /var: Variable data, log files

- /usr/bin: User program binaries
- /usr/sbin: Admin program binaries
- /usr/local: Local installation program data

### Put on separate filesystems
- var
- tmp
- usr
- home
- opt
- boot
- usr/local

### Put on same filesystem
- etc
- sbin
- dev
- bin
- lib
