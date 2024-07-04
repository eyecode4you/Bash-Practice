#!/bin/bash
ls /dev/sd* # check for SATA, SCSI, and USB-connected devices
ls /dev/hd* # check for older, PATA devices
ls /dev/sr* # check for optical devices
ls /dev/fd? # check for floppy devices
