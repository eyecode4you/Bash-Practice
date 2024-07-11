#!/bin/bash
# Overview of GRUB Legacy config & install
ls /boot/grub # menu.lst & grub.conf
ls -l /boot/grub/menu.lst # typically a pointer to grub.conf

sudo cat /boot/grub/grub.conf
# default setting denotes which OS is started e.g. 0 is first OS listed in title section
# timeout is how long before auto-loading OS
# if hiddenmenu isn't # out, OS selection at startup is hidden
# title denotes start OS selection.
      # root is where OS is located on disk e.g. (hd0,0) first 0 = first hd on sys, second 0 = first partition on that hd; can also use /dev/[device] paths
      # kernel denotes where OS is located on virtual directory & provides kernel options for loading
      # initrd denotes a virtual disk loaded into memory (RAM disk/Memory disk) - used to load init drivers

# Installing GRUB Legacy (requires su)
which grub-install
# legacy syntax:
# grub-install '(hd0)' - install to first hd in MBR
# grub-install '(hd0,0)' - first hd, first partition

# other syntax:
# grub-install /dev/sda - first hd in MBR
# grub-install /dev/sda1 - first hd, first partition
