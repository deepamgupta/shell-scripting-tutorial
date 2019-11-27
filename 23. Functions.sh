#! /bin/bash

# function fun_name(){
#       command1 $1 $4 #first and fourth argument
#       command2 $6 # sixth argument
#       .
#       .
#       .
#       commandN $N # Nth argument
# }



function sayHello(){
      echo $1 $2 $3
}


# This will also work
# sayHello(){                       
#       echo $1 $2 $3
# }

sayHello Hello
sayHello Hello World
sayHello Hello World Again
sayHello Hello World Again Baby

quit (){
      exit # this exits the current script
}

echo "Quitting the script before excuting the whole program"

quit
echo "Foo" # order of function declared doesn't matter, but the order in which they are called matters.
