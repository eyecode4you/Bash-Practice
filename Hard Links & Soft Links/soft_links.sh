#!/bin/bash
touch file.txt

# creating a soft link
ln -s file.txt fileSoftLink

ls -l file* # soft links are denoted with l as file type code, no data shared with linked file

rm file*
