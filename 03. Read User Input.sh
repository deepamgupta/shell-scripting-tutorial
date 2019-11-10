#! /bin/bash

echo "Enter name :" ;
read name
echo "Entered name : $name"


# Read multiple inputs on same line
echo
echo "Enter 3 names : "
read name1 name2 name3
echo "Names : $name1, $name2, $name3."


# Read on the same line as prompt
echo
read -p "Enter username : " username #using prompt(-p) flag
echo "Username : $username" 

# or
# echo -e "Enter Username : \c" # enable the flag operators(-e); bring the cursor on the sam line(\c)
# read username
# echo "Username : $username"


# Read silent input
echo 
read -sp "Enter Password : " password #using silent(-s) flag
echo "Password : $password"


#  Array
echo
read -p "Enter names : " -a names #using -a(array) flag
echo "Names : ${names[0]}, ${names[1]}, ${names[2]}..."
echo $names #just prints the first values in the array


# Default Variable
read # When only read is there without any variable, then the input is stored in a default system variable called $REPLY
echo "\$REPLY => $REPLY" #$REPLY is not an array