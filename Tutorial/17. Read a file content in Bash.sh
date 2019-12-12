#! /bin/bash

# There are basically three ways to read file content using bash.
# 1a: While loop: Single line at a time: Input redirection.
# 1b: While loop: Single line at a time:
# Open the file, read from a file descriptor (in this case file descriptor #4).
# 2: While loop:  Read file into single variable and parse.

while read line; do
      echo $line
done </etc/host.conf # Input Redirection -> The file content of 'test_case' is redirected to the direction of the arrow(<) and then it is fed to the read command and then printed by the echo command

cat /etc/host.conf | while read line; do # whatever the output of the cat command will be the inupt of the while loop
      echo $line
done


# Beat method

# now IFS stands for internal field
# separator and it is used by the shell to
# determine how to do word splitting and
# that is how to recognize word boundaries
while IFS=' ' read -r line; do # (-r) prevents escape character from being interpreted
      echo $line
done <17.\ Read\ a\ file\ content\ in\ Bash.sh
