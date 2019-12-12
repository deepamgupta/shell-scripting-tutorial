#! /bin/bash


# Syntax

# case expression in
#       pattern1 )      # pattern can be a regexp
#             statements ;;
#       pattern2 )
#             statements ;;
#       ...
# esac

echo -e "Enter some character : \c"
read value

case $value in
    [a-z] ) #expecting small letter from a to z
    echo "User entered $value a to z" ;;
    [A-Z] ) # if giving an Uppercase letter it outputs wrong answer, do the hack "LANG=C" in terminal, it will work
    echo "User entered $value A to Z" ;;
    [0-9] )
    echo "User entered $value 0 to 9" ;;
    ? )
    echo "User entered $value special character" ;;
    * ) # wilcard argument in linux(*)
    echo "Unknown input" ;;
esac

