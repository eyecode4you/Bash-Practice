#!/bin/bash
# long listing files & dirs
ls -l /etc/shadow
ls -ld /etc

# getting user & group info
whoami
groups
id -Gn
id -gn # show current effective group
