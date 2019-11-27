#! /bin/bash

# Every variable in shell is a global variable uptill and unless it is explicitly defined as "local"

function print_without_local(){
      name="Aman"
      echo "Value inside function is : $name" 
}

function print_with_local(){
      local name="Aman"
      echo "Value inside function is : $name" 
}

echo "-----------------without local-------------------"

name="Karan"
echo "Value Before function call : $name"
print_without_local
echo "Value After function call : $name"

echo
echo "-----------------with local-------------------"

name="Govind"
echo "Value Before function call : $name"
print_with_local
echo "Value After function call : $name"