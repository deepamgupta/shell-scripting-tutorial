#! /bin/bash



echo -e "Enter Age : \c"
read age

if [ $age -eq 18 ] || [ $age -eq 35 ]
then 
      echo "Valid"
else
      echo "Invalid"
fi

if [ $age -eq 18 -o $age -eq 35 ] # AND Flaf(-a)
then 
      echo "Valid"
else
      echo "Invalid"
fi 

if [[ $age -eq 18 || $age < 35 ]]
then 
      echo "Valid"
else
      echo "Invalid"
fi 