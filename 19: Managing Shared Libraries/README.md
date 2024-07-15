## Managing Shared Libraries
### What are libraries?
- stored in /lib
- shared program code

### Library general naming guidelines
- e.g. lib[libraryname].so.[version] libapparmor.so.1.4.2
- e.g. libsystemd-shared-237.so

### Library env var:
$LD_LIBRARY_PATH (typically only set if you're developing your own libraries)
