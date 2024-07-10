#!/bin/bash
# viewing current fs space usage and individual dir space usage
df -h # displays disk usage and free space

du /home # checks space usage of provided dir, may need su
du -s /home # shows summary view
du -s --inodes /home # check inodes in use in provided dir

df -i # shows a summary inode usage as a whole
