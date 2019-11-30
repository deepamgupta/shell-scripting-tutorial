#! /bin/bash

# There are
# some scenarios in which our
# script is interrupted in the middle of
# doing something and it's not yet
# finished but some signal can come or
# some unexpected behavior can come which
# can interrupt the execution of our
# script and that's why we use trap
# command.
# now trap command provides the
# script to capture and interrupt and then
# clean it up within the script.
# so now when we use the trap command our
# trap command in the script will be able
# to catch this kind of interrupts and signals
# and then we willbe able to do some kind of 
# stuff before exiting out

# Ctrl+C => SIGNAL(2) is Interrupt Signal (SIGINT command)
# Ctrl+Z => SIGNAL(18,20,24) is Suspend Signal  (SIGTSTP command => Stop typed at terminal)
# kill -9 (SIGKILL Singal) => open two terminals, in one, run this script and see the pid; In other terminal type "kill -9 pid_value"
# SIGINT(2)
# man 7 signal => SIGNAL(7) : Linux Programmer's Mannual
# trap doesn't catch SIGKILL(9) and SIGSTOP(1, 19, 23)

# trap "echo 'Interrupt signal is detected'" SIGINT 

file=file_created_by_SIGINT_by_lesson_27.txt

trap "echo Exit signal(0) detected"

trap "touch $file && echo SIGINT detected, file created" 2 # press Ctrl+C to create file while the script is running.
trap "rm -f $file && echo SIGTSTP detected, file deleted" 18 # type "kill -9 5438" in othe terminal while script is running to delet the file


echo "pid is $$" #used to print the pid of a script

while ((COUNT < 7)); do
	sleep 3
	((COUNT++))
	echo $COUNT
done
exit 0 # 0 is for SUCCESS
