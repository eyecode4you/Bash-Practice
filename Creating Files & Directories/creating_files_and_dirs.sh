#!/bin/bash
touch file.txt file1.txt file2.txt file3.txt
ls -l file.txt
file file.txt # show file type
rm -i file.txt

# copying and moving files
cp file3.txt file.txt
mv file.txt file4.txt
ls file?.txt

# directories
mkdir Test
mv file?.txt Test/
ls Test

rm -r Test

mkdir Dir
touch Dir/file1.txt Dir/file2.txt
ls Dir
mv Dir newDir
ls newDir

rm -r newDir
