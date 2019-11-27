#! /bin/bash

# SELECT Loop
#  used to print menus

echo "-------------------------Select loop is for printing menus-------------------------------"
select name in Raj Kamal Guru Chetan; do
      if [ -z $name ]; then
            break
      fi
      echo "$name is selected"
done

# select is often used with case statement

i=0
echo
echo "-------------------------Select a car-------------------------------"
select car in BMW Toyota "Range Rover" Mercedes; do
      case $car in
      "BMW")
            echo "BMW is precious"
            ;;
      "Toyota")
            echo "Toyota is for people"
            ;;
      "Range Rover")
            echo "It has a solid look"
            ;;
      "Mercedes")
            echo "For professionals"
            ;;
      *)
            echo "You ain't liked any car??"
            ;;
      esac
      if [[ i -eq 4 ]]; then
            break
      fi
      ((++i))
done
