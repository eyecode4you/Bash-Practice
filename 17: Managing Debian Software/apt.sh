#!/bin/bash
# config file that contains repos for sys:
cat /etc/apt/sources.list

# update repo info
sudo apt-get update

# install or update a package, e.g. procinfo
sudo apt-get install procinfo

# remove a package
sudo apt-get remove procinfo

# get info about specified package dependencies
apt-cache depends procinfo

# get more info about package
apt-cache showpkg procinfo

# show any unmet dependencies for installed packages
apt-cache unmet
