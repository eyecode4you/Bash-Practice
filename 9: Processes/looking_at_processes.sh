#!/bin/bash
ps # shows running processes
pgrep bash # search for a process' ID

ps --tty tty2 # GNU-style double dashes
ps -elf | less # UNIX-style dash, show every process in long full format
ps aux | less # BSD-style option
