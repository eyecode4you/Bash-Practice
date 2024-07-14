#!/bin/bash
# yum = Yellowdog, most cmds need su
cat /etc/yum.conf
ls /etc/yum.repos.d

# yum auto-updates repo info when issuing cmds
# check if package is installed
yum list iptraf-ng

# install a package
yum install iptraf-ng

# cleanup yum cache
yum clean all

# update a package
yum update iotop
yum update # update all packages

# uninstall a package
yum remove iptraf-ng # can also use yum erase cmd

# get package info
yum info iotop

# check dependencies
yum deplist iotop

# check from what package a file comes from
yum provides /bin/top

# search for a package
yum search iptraf-ng # matches based on pattern
