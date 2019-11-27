#! /bin/bash

# Program to check if file exists or not by taking argument from command line

# function check_file() {
#       echo $1
#       if [ -f $1 ]; then
#             echo "File exists"
#       else
#             echo "Does not exists"
#       fi
# }

# file=$1
# check_file $file



# from TUTORIAL

usage() {
	echo "You need to provide an argument."
	echo "Usage : $0 file_name"
}

is_file_exists() {
	local file="$1"		# "" around $1 are necessary to avoid the error of spaces in names
	[[ -f "$file" ]] && return 0 || return 1	# Ternary operator
}

[[ $# -eq 0 ]] && usage		# "#0"	defines number of arguments given at command line

if (is_file_exists "$1"); then
	echo "File found"
else
	echo "File not found"
fi
