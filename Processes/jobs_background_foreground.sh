#!/bin/bash
sleep 3 # pauses bash terminal, can stop with ctrl+z
jobs # shows jobs running in bg and paused jobs
jobs -l # shows PID as well

bg 1 # will run job with job ID 1 in background
sleep 3& # will start cmd and run in bg

fg 1 # will run job with job ID 1 in foreground (i.e. in terminal window)
