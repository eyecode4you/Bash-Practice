#!/bin/bash
# zypper may not be available on CentOS or Ubuntu, try OpenSUSE
cat /etc/zypp/zypper.conf # zypper conf file
ls /etc/zypp/repos.d # zypper repos

# view zypper repos used by system
zypper lr

# update (refresh) zypper repo info
sudo zypper refresh # or zypper ref

# install a package
sudo zypper install iotop

# check if package is installed
sudo zypper search -i iotop # i+ indicates it's installed
sudo zypper what-provides /usr/sbin/iotop

# update a package
sudo zypper update iotop
sudo zypper update # update all packages

# uninstall a package
sudo zypper remove iotop

# get info about package
zypper info iotop

# verify if installed packages have dependencies met
sudo zypper verify

# check if updates are available for packages
sudo zypper list-updates

zypper # will show info on cmd use
