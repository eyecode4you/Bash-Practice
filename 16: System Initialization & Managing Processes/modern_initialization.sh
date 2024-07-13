#!/bin/bash
# target is a group of services to be started

# systemd + services started at boot
systemctl get-default

# systemd unit & target files
sudo systemctl set-default multi-user.target
systemctl get-default
sudo systemctl set-default graphical.target

# view/modify systemd config
systemctl list-unit-files
systemctl list-unit-files | grep ^syslog
# Service statuses:
  # Enabled: Service starts at boot
  # Disabled: Service doesn't start at boot
  # Static: Service only starts if manually started or another service needs it at boot

systemctl cat syslog.service # shows info about service and its config

# systemd unit file locations
ls /etc/systemd/system
ls /run/systemd
ls /usr/lib/systemd # can contain customized systemd unit files that override the other locations
