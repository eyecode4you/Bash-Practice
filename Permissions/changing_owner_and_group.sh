#!/bin/bash
touch file1.txt
ls -l file1.txt

# change file's group
chgrp adm file1.txt
ls -l file1.txt

# change file's owner
sudo chown root file1.txt
ls -l file1.txt

rm file1.txt
