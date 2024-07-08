#!/bin/bash
# device drivers act as translators between devices so they can interoperate
# drivers can be found in (will change depending on distro!):
ls /lib/modules/5.4.0-65-generic/kernel/drivers

# lsmod utility shows all current kernel modules
lsmod
lsmod | grep joydev # search for specific module
modinfo joydev # get more info on module, also shows absolute path 

# removing a kernel module:
sudo rmmod joydev # rmmod removes single module but not its dependents

# inserting a kernal module, requires absolute dir:
sudo insmod /lib/modules/5.4.0-65-generic/kernel/drivers/input/joydev.ko # inserts single module but not its dependents

# modprobe is a kernel management utility, better than insmod and rmmod
sudo modprobe -v dm-mirror # will insert dm-mirror and all its dependencies, doesn't require absolute path
lsmod | grep dm_mirror
sudo modprobe -rv dm-mirror # will remove dm-mirror and all its dependencies
