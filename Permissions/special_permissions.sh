#!/bin/bash
touch file.txt
ls -l file.txt
mkdir dir
ls -ld dir

# SYMBOLIC MODE (s for SUID & SGID, t for Sticky Bit) (must have x perm. to set special perms.)
chmod u+xs file.txt
ls -l file.txt
chmod u-sx file.txt

chmod g+sx file.txt
ls -l file.txt

chmod o+t dir
ls -ld dir

# OCTAL MODE
