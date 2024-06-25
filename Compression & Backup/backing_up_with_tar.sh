#!/bin/bash
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3
cp /var/log/wtmp file4

tar -cvf archive.tar file? # archive copies of all files with tar
tar -tf archive.tar # list archive contents
