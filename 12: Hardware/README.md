## Looking at low-level hardware info

- kernel modules include device drivers, filesystem drivers, network drivers, system calls, and executable loaders. Usually has .ko extension
- A device driver acts as a translator between devices for interoperability
- Cold Plug device is already plugged into computer before boot, cannot be attached to an already-running computer, must shutdown first. E.g. sda1
- Hot Plug device can be added to a running system
- udev (systemd-udevd service) sets up files in /dev for hot & cold plug devices, uses info in /sys to do this. Also handles NICs
- Hot plug devices are typically auto-mounted in /media
- If no config rules are provided to udev for hot plug device, it will check /etc/udev/rules.d -> [file].rules
- DBus is a service (daemon) provides message communication between services
- udev and DBus don't directly interact, udev listens for events through the Linux kernel. After udev handles a hot/cold plug device, services can communicate to those devices over DBus
