#!/bin/bash
# top cmd shows top running processes, q to exit
uptime # shows system uptime, no. of logged-in users, and CPU load averages
free -h # shows system memory and how much of it is free

# multiplex utility allows you to divide up a terminal screen into multiple displays to monitor and run cmds simultaneously
# screen cmd - GNU screens utility
  # split horizontal. ctrl+a, shift+s
  # split vert. ctrl+a, shift+|
  # switch focus ctrl+a+tab
  # create screen ctrl+a+c
  # remove focus ctlr+a, shift+a
  # clear focus ctlr+a+k
  # close all screens ctrl+a+\
  
# tmux cmd
  # tmux new
  # split horiz. ctrl+b+"
  # split vert. ctrl+b+%
  # quit pane - exit
  # close all panes ctrl+b+&
