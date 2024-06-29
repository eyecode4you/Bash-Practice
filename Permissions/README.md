## Notes on Linux permissions

With long listing we get file info, e.g. ls -l /etc/shadow

-rw-r----- 1 root shadow 1275 Oct 22 11:09 /etc/shadow

*[file type] [perms. for owner] [perms. for group] [perms. for all] [link count] [owner] [group] [size] [modification date] [file path]*


For long dir info use ls -ld


__File Type Codes__
- \- file
- d directory
- l symbolic link
- b block device
- c character device


__Permissions__
- r read
- w write
- x execute
- \- none
