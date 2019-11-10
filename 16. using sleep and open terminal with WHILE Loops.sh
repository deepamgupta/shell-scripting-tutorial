#! /bin/bash

n=1
while (($n <= 3)); do
      echo $n
      ((n++))
      sleep 1 #sleep for 1 second
done

# opening 3 gnome-terminal
n=1
while (($n <= 3)); do
      gnome-terminal
      ((n++))
done
