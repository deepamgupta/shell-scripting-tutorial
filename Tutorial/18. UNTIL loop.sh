#! /bin/bash

#  Until Loop => loops until some condition is false

n=1
until ((n > 10)); do
      echo $n
      (( n++ ))
done
