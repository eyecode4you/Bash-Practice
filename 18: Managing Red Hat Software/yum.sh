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
