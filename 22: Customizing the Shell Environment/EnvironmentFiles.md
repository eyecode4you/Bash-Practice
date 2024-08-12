### Global environment files run for everyone on the system.
Locations:
- /etc/profile
- /etc/profile.d/
- /etc/bashrc
- /etc/bash.bashrc


### Local environment files only run for individual users.
Locations:
~/.bash_profile
~/.bash_login
~/.profile
~/.bashrc
~/.bash_logout

Local environment files are selected to run based on a hierarchy:
First found in list is run, rest are ignored
1. ~/.bash_profile
2. ~/.bash_login
3. ~/.profile

Selected file is run by other environment files:
- ~/.bashrc


### What you can do with environment files:
- Set environment variables, e.g. EDITOR=/usr/bin/nano
- Modify commands, e.g. alias rm='rm -i'
- Change terminal appearance, e.g. setterm -inversescreen on
