# EXAMPLE
# PRI indicates priorities, NI indicates priority modification (-20 (higher) to 19 (lower))
ps -l # default PRI = 80, assigning priority < 0 requires su

nice -n 19 sleep 2000& # starts ps and assigns priority of 19
renice -n 5 2010 # reprioritize running ps (PID 2010) to 5

# can also use:
nice -19 sleep 100&
nice --19 sleep 200&

renice +5 2011

# within top cmd:
# shift+l to search for ps
# r to initiate renice
