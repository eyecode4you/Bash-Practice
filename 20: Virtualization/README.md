## Virtualization
- Understanding VMs
- Understanding Containers

### Basics
- VMs exist entirely in software
- A running VM is an instance or system image
- Physical -> OS -> Hypervisor -> VM -> VM OS -> Apps
- Host & Guest OS

### Hypervisors
- Type 1 Hypervisor replaces host OS
- Type 2 Hypervisor runs alongside host OS

### Containers
- Use Container Engine instead of Hypervisor
- Shares host OS
- Copies only libraries & binaries needed to run a specific app/app stack

## cloud-init Utility
- Available from cloud-init package
- Automates instance creation with YAML
- Can customize instances from a VM template
- Works with many CSPs, AWS and Azure
- ssh-keygen & ssh-copy-id utilities can create secure ssh tunnel to guest instances
