#!/bin/bash
# display info about PCI buses and connected devices:
lspci # displays: Slot, Class, Vendor, Device, Revision, Prog. Interface
lspci -tv # for tree view and more info
lspci -vv # for even more info
lspci -vvv # MOAR!

# finding specific PCI-connected device info
lspci | grep SATA
ls /dev/disk/by-path
# readlink -f can be used to find whic device is linked to:
readlink -f /dev/disk/by-path/pci-0000\:00\:0d.0-ata-1.0-part1 # points to /dev/[device]

# view USB-connected devices:
lsusb
