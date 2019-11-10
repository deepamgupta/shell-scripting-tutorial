#! /bin/bash



echo -e "Enter Age : \c"
read age

if [ $age -gt 18 ] && [ $age -lt 35 ]
then 
      echo "Valid"
else
      echo "Invalid"
fi

if [ $age -gt 18 -a $age -lt 35 ] # AND Flaf(-a)
then 
      echo "Valid"
else
      echo "Invalid"
fi 

if [[ $age -gt 18 && $age < 35 ]]
then 
      echo "Valid"
else
      echo "Invalid"
fi 