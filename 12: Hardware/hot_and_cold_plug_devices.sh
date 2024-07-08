#!/bin/bash
# udev dets up cold plug devices, to view info requires admin
su -c "udevadm info /dev/sda1 | less"
