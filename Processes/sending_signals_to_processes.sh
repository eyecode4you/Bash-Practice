# EXAMPLE
# create 3 bg processes
sleep 3000& # e.g. PID = 2010
sleep 6000& # e.g. PID = 2011
sleep 9000& # e.g. PID = 2012

kill -s SIGKILL 2010 # 9, KILL, or SIGKILL will terminate PID 2010

kill -9 2011 # same as above for PID 2011
