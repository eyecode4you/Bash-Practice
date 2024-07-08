#!/bin/bash
lsdev # shows low-level device info. May not be installed by default. Gets info from:
ls /proc/dma # Direct Memory Access
ls /proc/interrupts # Allows CPU to know which devices have data to send to it by their IRQs
ls /proc/ioports # The assigned IO ports for comms between CPU and devices

ls /dev/disk/by-id # Connected storage devices listed by world-wide id (WWID)
ls /dev/disk/by-label # By label, if used
ls /dev/disk/by-uuid # By Universal Unique ID (UUID)
ls /dev/disk/by-path # By how a device connects to the PCI BUS
