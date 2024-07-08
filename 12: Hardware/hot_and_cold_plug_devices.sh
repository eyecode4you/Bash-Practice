#!/bin/bash
# udev dets up cold plug devices
su -c "udevadm info /dev/sda1 | less"
