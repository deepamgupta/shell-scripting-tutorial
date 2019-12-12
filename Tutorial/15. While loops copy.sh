#! /bin/bash

#while loops

n=1
while [ $n -le 10 ]
do
      echo "$n"
      n=$((n + 1))
done


# or

echo

n=1
while (( n <= 10 ))
do
      echo "$n"
      (( ++n ))
done
