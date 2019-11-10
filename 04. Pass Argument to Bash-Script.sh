#! /bin/bash

# pass the command line arguments while executing the programming

#prints the arguments passed
echo $0 $1 $2 $3 '> echo $0 $1 $2 $3' 

# Storing passed arguments in an array ($@ doesn't stores the name of the file but $0 stores)
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo $@

# Number of arguments passed
echo $#

