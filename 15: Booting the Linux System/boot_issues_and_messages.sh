#!/bin/bash
# to view boot messages in kernel ring buffer (overwritten in time), use dmesg or journalctl:
dmesg

# systemd/jounald is a daemon that catches log messages and puts them into log files (journals)
su -c 'journalctl -k'

# boot messages are also stored in:
# /var/log/boot - Debian
# /var/log/bootstrap - Ubuntu
# /vay/log/boot.log - Red Hat
