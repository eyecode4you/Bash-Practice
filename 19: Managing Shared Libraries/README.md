## Managing Shared Libraries (DLLs)
### What are libraries?
- stored in:
- /lib & /lib64
- /usr/lib & /usr/libexec
- ls -F /lib
- libraries are shared program code

### Library general naming guidelines
- e.g. lib[libraryname].so.[version] libapparmor.so.1.4.2
- e.g. libsystemd-shared-237.so

### Library env var:
- $LD_LIBRARY_PATH (typically only set if you're developing your own libraries)

### library config file
- /etc/ld.so.conf (include /etc/ld.so.conf.d/*.conf - will use all files in here)
- /etc/ld.so.conf.d (contains conf files e.g. libc.conf & x86_64-linux-gnu.conf)
