#!/bin/bash
# device drivers act as translators between devices so they can interoperate
# drivers can be found in (will change depending on distro!):
ls /lib/modules/5.4.0-65-generic/kernel/drivers

# lsmod utility shows all current kernel modules
lsmod
lsmod | grep joydev # search for specific module
modinfo joydev # get more info on module
