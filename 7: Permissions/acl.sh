#!/bin/bash
# ACLs allow you to define fine-grained discretionary access for files & dirs
touch confidential.txt

# Add permission for single user (e.g. david)
setfacl -m u:david:rwx confidential.txt

# add permissions for single group (e.g. disco)
setfacl -m g:disco:rw confidential.txt
