#! /bin/bash

echo -e "Enter the name of the file : \c" # enable the flag operators(-e)
read file_name

if [ -e $file_name ] # exists or not(-e)
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

if [ -f $file_name ] # exists and whether it is a regular file or not(-f)
then
    
    echo "$file_name is a file"
    if [ -s $file_name ] # exists and whether file is empty or not(-s)
    then
        echo "$file_name isn't empty"
    else
        echo "$file_name is empty"
    fi
    
    if [ -r $file_name ] # exists and whether file read permission(-r)
    then
        echo "$file_name has read permission"
    else
        echo "$file_name has no read permission"
    fi
    
    if [ -w $file_name ] # exists and whether file read permission(-r)
    then
        echo "$file_name has write permission"
    else
        echo "$file_name has no write permission"
    fi
    
    if [ -x $file_name ] # exists and whether file execute permission(-x)
    then
        echo "$file_name has execute permission"
    else
        echo "$file_name has no execute permission"
    fi
    
else
    echo "$file_name is a not file"
fi

if [ -d $file_name ] # exists and whether it is a directory or not(-d)
then
    
    echo "$file_name is a folder"
    
    # if [ -s $file_name ] # -s doesn't work for directory
    # then
    #       echo "$file_name isn't empty"
    # else
    #       echo "$file_name is empty"
    # fi
    
    if [ $(ls -A $file_name) ] # exists and whether folder is empty or not($(ls -A /path/to/directory))
    then
        echo "$file_name is not empty"
    else
        echo "$file_name is empty"
    fi
else
    echo "$file_name is not a folder"
fi


# Types of Special Files
# https://www.computerhope.com/jargon/s/special-file.htm

# 1. Character Special File
# - a character special file is a
# normal file which contains some text or
# data or something like that.

# 2. Block Special File
# - a block
# special file is a binary file for
# example - a picture file or a video
# file it's a block special file.

# so a file
# which contains normal text or normal
# character is a character special file
# and other files for example video files
# or music files or you know image files
# are block special files right so for
# block special files you can use the flag
# -b and for characters special file you
# can use the file -c

if [ -c $file_name ] # exists and whether file is a character special file or not(-c)
then
    echo "$file_name is a character special file"
else
    echo "$file_name is not a character special file"
fi

if [ -b $file_name ] # exists and whether file is a block special file or not(-b)
then
    echo "$file_name is a block special file"
else
    echo "$file_name is not a block special file"
fi



