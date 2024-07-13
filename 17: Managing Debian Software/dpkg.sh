#!/bin/bash
# dpkg does not download from a repo, package file must be on local system to install!
# Package structure: 
# [name]_[version]-[release]_[arch].deb e.g. gimp_2.8.22-1_amd64.deb

# list package contents (--contents)
dpkg -c gimp_2.8.22-1_amd64.deb

# view package info (--info)
dpkg -I gimp_2.8.22-1_amd64.deb | less

# check if package is installed (--status), only need package name
dpkg -s gimp | less

# install & update package (--install)
sudo dpkg -i gimp_2.8.22-1_amd64.deb
dpkg -s gimp | less

# verify package files (--verify)
sudo dpkg -V gimp # no output means verified

# check for broken package
sudo dpkg -C gimp # no output means ok

# remove a package
sudo dpkg -r gimp # doesn't remove dependencies

# reconfigure an installed package
# sudo dpkg-reconfigure apparmor
