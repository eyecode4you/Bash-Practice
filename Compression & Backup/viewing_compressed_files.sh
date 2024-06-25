#!/bin/bash
cp /var/log/boot.log .
gzip boot.log

cp /var/log/boot.log .
bzip2 boot.log

cp /var/log/boot.log .
xz boot.log

ls boot.log.*

zcat boot.log.gz # zcat for .gz files
bzcat boot.log.bz2 # bzcat for .bz2 files
xzcat boot.log.xz # xzcat for xz files
