#! /bin/bash

os=('ubuntu' 'windows' 'kali')

os[3]='mac'

os[7]='fedora'


unset os[2]

echo -e "elements of the array : \t${os[@]}" # elements of the array

echo -e "0th element : \t${os[0]}" # 0th element

echo -e "indexes of array : \t${!os[@]}" # indexes of array

echo -e "no. of elements in the array : \t${#os[@]}" # no. of elements