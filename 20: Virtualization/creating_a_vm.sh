#!/bin/bash
# Before Creating a VM:
# Research host system's BIOS for virtualization support
# Check host system resources
  # Enough processing to support guest VMs - top
  # Available RAM - free
  # Free disk space available - du
  # How many NICs

# Check if CPU extensions support virtualization - /proc/cpuinfo
grep ^flags /proc/cpuinfo | grep vmx # supports virtualization & has Intel chip
grep ^flags /proc/cpuinfo | grep svm # supports virtualization & has AMD chip
sudo lsmod | grep -i kvm # KVM: check loaded modules for kvm-amd or kvm-intel, modprobe if not loaded

grep ^flags /proc/cpuinfo # hypervisor flags shows you're running Linux as virtualized guest

# Building additional guest VMs
  # OVF files or OVA file
  # Clone - done within hypervisor, duplication of guest config & data files
  # Template - non-bootable, blueprint/config for hypervisor to build VM

# Things to check post-duplication:
  # Remove/re-gen D-BUS Machine ID (/var/lib/dbus/machine-id)
  # Remove machine ID (/etc/machine-id)
  # Hostname
  # NIC MACs
  # NIC IP
  # UUID

# check a disk's UUID:
cat /etc/fstab

# view machine ids, these need to be deleted in this order on duplicated OS
cat /etc/machine-id
cat /var/lib/dbus/machine-id

# dbus-uuidgen can be used to gen a new uuid for system (--ensure)
which dbus-uuidgen
# dbus-uuidgen --ensure
