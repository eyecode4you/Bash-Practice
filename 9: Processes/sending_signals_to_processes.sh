# EXAMPLE
# create 3 bg processes
sleep 3000& # e.g. PID = 2010
sleep 6000& # e.g. PID = 2011
sleep 9000& # e.g. PID = 2012

kill -s SIGKILL 2010 # 9, KILL, or SIGKILL will terminate PID 2010
kill -9 2011 # same as above for PID 2011

kill 2012 # default kill, sends -15, TERM, SIGTERM

kill %3 # kill a background job by using % and job ID

killall sleep # kill all sleep processes

sleep 1000& # e.g. PID = 2013
pgrep -ag 2013 # we can search for ps info using pgrep
pkill -15 -g 2013 # we can also kill process using pkill
