#! /bin/bash

echo -e "Enter the name of the file : \c" 
read file_name

if [ -f $file_name ] 
then
    if [ -w $file_name ]
    then
        echo "Type something to append in the file. to quit press Ctrl+D."
        cat >> $file_name
    else
        echo "You do not have write permissions."
    fi
else
    echo "$file_name not found"
fi

