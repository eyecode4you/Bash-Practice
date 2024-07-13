#!/bin/bash
# determine a service's status
systemctl status network-manager

# starting/stopping services
sudo systemctl stop network-manager
systemctl status network-manager
sudo systemctl start network-manager
systemctl status network-manager

# setting services to start/stop at boot
# Loaded: line shows whether enabled/disabled
sudo systemctl disable network-manager # stop at boot
systemctl status network-manager
sudo systemctl enable network-manager # start at boot
systemctl status network-manager

# jumping service targets
systemctl get-default
sudo systemctl isolate multi-user.target
sudo systemctl isolate runlevel1.target # can also use runlevels
