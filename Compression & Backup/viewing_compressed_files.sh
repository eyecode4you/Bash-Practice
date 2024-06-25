#!/bin/bash
cp /var/log/boot.log .
gzip boot.log

cp /var/log/boot.log .
bzip2 boot.log

cp /var/log/boot.log .
xz boot.log

ls boot.log.*
