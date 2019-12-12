#! /bin/bash


echo -----------break-------------

for ((i = 0; i <= 10; ++i)); do
      if [ $i -gt 7 ]; then
            break
      fi
      printf "$i "
done

echo
echo -----------continue-------------


for ((i = 0; i <= 10; ++i)); do
      if [ $i -gt 3 -a $i -lt 6 ]; then
            continue
      fi
      printf "$i "
done

echo