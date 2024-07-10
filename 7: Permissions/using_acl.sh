#!/bin/bash
# ACLs allow you to define fine-grained discretionary access for files & dirs
touch confidential.txt
ls -l confidential.txt
getfacl confidential.txt # view permissions

# Add permission for single user (e.g. david):
setfacl -m u:david:rwx confidential.txt

# add permissions for single group (e.g. disco):
setfacl -m g:disco:rw confidential.txt

# to allow all files/dirs within a dir to inherit ACL:
setfacl -Rm u:david:rwx /home/user

getfacl confidential.txt

# to remove a specific ACL entry:
setfacl -x u:david confidential.txt
setfacl -x g:disco confidential.txt

# to remove all ACL entries on a file/dir:
setfacl -b /home/user

# ACL entries add a + to long listings
# Setting w perm with ACL does not allow deletion of the file/dir
