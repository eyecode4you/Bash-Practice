#!/bin/bash
# Overview of GRUB2 config, update, and install

# look for grub.cfg
ls /boot/grub

# for BIOS systems, GRUB2 config could be located in:
ls /boot/grub/grub.cfg
ls /boot/grub2/grub.cfg

# for UEFI systems, GRUB2 cfg is in:
ls /boot/efi/EFI/*/grub.cfg
