#! /bin/bash

# Number Comparisons:
# ------------------------------------
# -eq, ==  compare if two numbers are equal
# -ne, !=  compare if two numbers are not equal
# -ge, >=  compare if one number is greater than or equal to a number
# -le, <=  compare if one number is less than or equal to a number
# -gt, >  compare if one number is greater than another number
# -lt, <  compare if one number is less than another number

# Examples:
# [ $n1 -eq $n2 ], (( $n1 == $n2 ))  (true if n1 same as n2, else false)
# [ $n1 -ne $n2 ], (( $n1 != $n2 ))  (true if n1 is not same as n2, else false)
# [ $n1 -ge $n2 ], (( $n1 >= $n2 ))  (true if n1 greater then or equal to n2, else false)
# [ $n1 -le $n2 ], (( $n1 <= $n2 ))  (true if n1 less then or equal to n2, else false)
# [ $n1 -gt $n2 ], (( $n1 > $n2 ))  (true if n1 greater then n2, else false)
# [ $n1 -lt $n2 ], (( $n1 < $n2 ))  (true if n1 less then n2, else false)

# String Comparisons:
# ---------------------------------
# -eq, =  compare if two strings are equal
# -ge, >=  compare if one string is greater than or equal to a string
# -le, <=  compare if one string is less than or equal to a string
# -ne, !=  compare if two strings are not equal
# -gt, >  compare if one string is greater than another string
# -lt, <  compare if one string is less than another string
# -n  evaluate if string length is greater than zero
# -z  evaluate if string length is equal to zero

# Examples:
# [ $s1 = $s2 ], [[ $s1 == $s2 ]]   (true if s1 same as s2, else false)
# [[ $s1 != $s2 ]]  (true if s1 not same as s2, else false)
# [[ $s1 >= $s2 ]]
# [[ $s1 <= $s2 ]]
# [[ $s1 > $s2 ]]
# [[ $s1 > $s2 ]]
# [ $s1 ]  (true if s1 is not empty, else false)
# [ -n $s1 ]   (true if s1 has a length greater then 0, else false)
# [ -z $s2 ]   (true if s2 has a length of 0, otherwise false)

# Number Comparison Example

echo "Number Example"
read -p "Enter a number : " number
if (($number == 0)); then # or [ $number == 0 ] or [ $number -eq 0 ] or (( $number == 0 ))
      echo "Number = 0"
elif (($number > 0)); then
      echo "Number > 0"
else
      echo "Number < 0"
fi

if [ $number ] <9; then
      echo "This statement will be printed everytime"
fi

if [ $number -lt 9 ]; then
      echo "Less than 9"
fi

if (($number < 9)); then
      echo "Less than 9"
fi

echo

# String Example

echo "String Example"
read -p "Enter a string : " string

if [ $string = "mno" ]; then
      echo "String is 'mno'"
elif [[ $string < "mno" ]]; then
      echo "String is lessthan 'mno'"
else
      echo "String is greaterthan 'mno'"
fi

echo

if [ -z $string ]; then
      echo "String is empty using '-z' flag"
fi

echo

if [ $string ]; then
      echo "String is not-empty"
else
      echo "String is empty"
fi
