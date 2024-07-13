## Managing Debian Software
Managing Debian packages with dpkg & apt

### Package Concepts
A package is centered around a software app
- A package is a compressed bundle, containing:
- Software files (binaries, executables)
- Man pages
- Copyright Info
- Etc.

Primary Package Types:
- Binary (To run/use)
- Source (To develop)
-  Debian .deb & Red Hat .rpm

### Package Installation
- Requires su

Download & Install Locally:
- Tarball or package files
- Compile & install tarball with __make__ and __make install__
- Install package file with dpkg or rpm utilities

Download & Install using a Package Manager:
- Apt, Yum, Zypper

### Package Managers
- Download package files from a repository
- Install, update, remove, search, and more
- Utility names: Debian apt-get, apt-cache; Red Hat Yum or Zypper
