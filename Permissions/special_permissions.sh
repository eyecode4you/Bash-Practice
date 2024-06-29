#!/bin/bash
touch file.txt
ls -l file.txt
mkdir dir
ls -ld dir

# SYMBOLIC MODE
chmod u+xs file.txt
ls -l file.txt
chmod u-sx file.txt

chmod g+sx file.txt
ls -l file.txt

chmod o+t dir
ls -ld dir

# OCTAL MODE
