#! /bin/bash

# use FOR loop to execute commands

for command in ls pwd date; do
      echo "-------------$command---------------"
      $command
done

# for loop to find all the directories
# all directories in current folder

echo "--------------------directories in current folder------------------------------"

for item in *; do
      if [ -d "$item" ]; then  #if we do not surround $item with "", then the for loop will not be able to recognize the spaces in the names of files
            echo $item
      fi
done

echo

echo "--------------------files in current folder------------------------------"

for item in *; do
      if [ -f "$item" ]; then
            echo $item
      fi
done