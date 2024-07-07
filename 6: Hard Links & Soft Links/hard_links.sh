#!/bin/bash
touch file.txt
echo "Why Hello There" >> file.txt

# create a hard link to file
ln file.txt fileHardLink.txt

# view hard link info
ls -i file* # inode numbers will match

rm file*
