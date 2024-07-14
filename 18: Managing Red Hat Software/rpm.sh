#!/bin/bash
# Note: most cmds require su
# Package structure: [name]-[version]-[release]-[optional: distro].[architecture].rpm
ls *.rpm
# e.g. iotop-0.6-4.el7.noarch.rpm

# check if package is installed
rpm -q firefox

# query package and get info
rpm -qi firefox # won't show dep info

# query package dependencies
rpm -qR firefox

# query what package provides a specified file 
rpm -q --whatprovides /bin/top

# install a package
rpm -i iotop-0.6-4.el7.noarch.rpm

# update a package (will install if not installed)
rpm -U iotop-0.6-4.el7.noarch.rpm

# uninstall
rpm -e iotop # e for --erase

# verify a package
rpm -V iotop # no response means ok

# get info on package that's not installed
rpm -p iotop-0.6-4.el7.noarch.rpm

# to extract files from package without installing:
# rpm2cpio [package file].rpm > [name].cpio
# cpio -idv < [name].cpio
