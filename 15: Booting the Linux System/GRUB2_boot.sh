#!/bin/bash
# Overview of GRUB2 config & update

# look for grub.cfg
ls /boot/grub

# for BIOS systems, GRUB2 config could be located in:
ls /boot/grub/grub.cfg
ls /boot/grub2/grub.cfg

# for UEFI systems, GRUB2 cfg is in:
ls /boot/efi/EFI/*/grub.cfg

head -20 /boot/grub/grub.cfg
# We don't edit grub.cfg directly, settings are changed in:
    # /etc/default/grub
    # or by creating template with /etc/grub.d

cat /etc/default/grub
# TIMEOUT=0 or TIMEOUT_STYLE=hidden means no boot menu is displayed

ls /etc/grub.d/
# for custom entries to GRUB2 boot menu, modify either 40_custom or 41_custom

# GRUB2 Menu Entry E.g:
# menuentry 'Ubuntu, with Linux 5.4.0-67-generic'
    # set root=(hd0, msdos1)
    # linux /boot/vmlinuz-5.4.0-67generic root=UUID=3b...
    # initrd /boot/initrd.img-5.4.0-67-generic

# 1: Set Root Config Setting:
# Sets disk/partition location of OS
# set root='hd0, msdos1' indicates first disk & first MBR (DOS) partition
# set root='hd1, gpt1' second disk, first GPT partition
# set root='hd0,2' first disk, second partition

# 2: Location & Options Config:
# Provides virtual dir location of OS; kernel options for loading
# BIOS Systems start with:
    # linux
    # linux16
# UEFI Systems start with:
    # linuxefi

# 3: Initial RAM Filesystem Config:
# Provides initial RAM fs:
# For BIOS:
    # initrd
# For UEFI:
    # initrdefi

# Updating GRUB2
# grub-mkconfig > /location/grub.cfg
# grub-mkconfig -o /location/grub.cfg
# grub2-mkconfig > /location/grub.cfg
# grub2-mkconfig -o /location/grub.cfg
# update-grub (Ubuntu only)
