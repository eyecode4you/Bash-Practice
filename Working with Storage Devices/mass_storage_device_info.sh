#!/bin/bash
lsdev # shows low-level device info. Gets info from:
ls /proc/dma # Direct Memory Access
ls /proc/interrupts # Allows CPU to know which devices have data to send to it by their IRQs
ls /proc/ioports # The assigned IO ports for comms between CPU and devices
