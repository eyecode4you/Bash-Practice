#!/bin/bash
cat /etc/fstab # determines what filesystems systemd will mount and where when system boots
systemctl -t mount list-units # view systemd mount units in use
ls /etc/systemd/system/*.mount # check for custom mount unit files
