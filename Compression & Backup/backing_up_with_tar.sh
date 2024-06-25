#!/bin/bash
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3
cp /var/log/wtmp file4

tar -cvf archive.tar file? # archive copies of all files with tar
tar -tf archive.tar # list archive contents

rm file?
tar -xf archive.tar # extract tar archive contents

tar -Jcf archive.tar.xz file? # create xz tarball
tar -Jxf archive.tar.xz # extract tarball contents
