#!/bin/bash
cp /var/log/wtmp file1
cp /var/log/wtmp file2
cp /var/log/wtmp file3
cp /var/log/wtmp file4

# creating archive with cpio
ls file? | cpio -o > archive.cpio # doesn't modify original files

# reading files within cpio archive
cpio -itvI archive.cpio

rm file?

# extracting cpio archive (must use --no-absolute-filenames option for relative path to archived file)
cpio -i --no-absolute-filenames -I archive.cpio
