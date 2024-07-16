#!/bin/bash
# DNF is used on Fedora systems

# search for packages using pattern
dnf search unzip

# get info about a package
# dnf info [packagename]

# install package
# dnf install [packagename]

# remove a package
# dnf remove [packagename]

# upgrade package
dnf upgrade # update all
# dnf upgrade [packagename]

# check which package provides a file
# dnf provides [filename]

# get list of all packages installed
dnf list --installed

# list contents of package
# dnf repoquery -l [packagename]

dnf help install # dnf help to learn more info
dnf repolist # get list of repos used
