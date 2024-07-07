#!/bin/bash

# copy some files to work with
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3

# compressing with gzip, bzip2, and xs
gzip file1
bzip2 file2
xz file3

# note the compressed file sizes
ls -lh file?.*

# view gzip, bzip2, and xz files
zcat file1.gz
bzcat file2.bz2
xzcat file3.xz

# decompress gzip, bzip2, and xz files
gunzip file1.gz
bunzip2 file2.bz2
unxz file3.xz

# create a tar archive of the copied log files
tar -cvf log.tar file?
ls -l log.tar

# see what files are within the tar archive
tar -tf log.tar

# extract files from tar archive
tar -xvf log.tar

# create a tarball (compress & archive) of log files
tar -Jcvf log.tar.xz file?
ls -l log.tar.xz
