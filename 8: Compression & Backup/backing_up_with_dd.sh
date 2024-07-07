#!/bin/bash
lsblk # shows system disk info

# using dd. if = disk to copy, of = where to copy it, status shows progress of operation
dd if=/dev/sda of=/dev/null status=progress
