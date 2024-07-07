#!/bin/bash
touch file.txt
ls -l file.txt

# view default mask with umask cmd
umask

# umask octal code subtracts from default permissions (0666 or rw-rw-rw- for files) (0777 or rwxrwxrwx for dirs)
# modify umask
umask 0077 # e.g. to remove rwx from group and other
umask

touch file2.txt
ls -l file2.txt # group and other will be ---

rm file.txt
rm file2.txt
