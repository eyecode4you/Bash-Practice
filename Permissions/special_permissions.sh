#!/bin/bash
touch file.txt
ls -l file.txt
mkdir dir
ls -ld dir

# SYMBOLIC MODE (s for SUID & SGID, t for Sticky Bit) (must have x perm. to set special perms.)
chmod u+xs file.txt # run file with owner perms.
ls -l file.txt
chmod u-sx file.txt

chmod g+sx file.txt # run file with group perms.
ls -l file.txt

chmod o+t dir # allow sharing files in dir, only owner can delete files
ls -ld dir

# OCTAL MODE (4=SUID, 2=SGID, 1=Sticky Bit) (Placed to left of 3 octal digits, x perm., combos)
chmod 4744 file.txt # Set UID
ls -l file.txt
chmod 6750 file.txt # SUID & SGID
ls -l file.txt
chmod 1755 dir # Sticky Bit
ls -ld dir

rm file.txt
rmdir dir
