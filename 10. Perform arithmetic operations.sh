#! /bin/bash

num1=26 # Don't Forget that while assigning the variables, there is no $ sign and no space on both sides of =
num2=5

echo "Summation : " $(( num1 + num2 ))
echo "Difference : " $(( num1 - num2 ))
echo "Product : " $(( num1 * num2 ))
echo "Quotient" $(( num1 / num2 ))
echo "Remainder : " $(( num1 % num2 ))

# or

echo "Summation : " $(expr $num1 + $num2 )
echo "Difference : " $(expr $num1 - $num2 )


# echo "Product : " $(expr $num1 * $num2 )      expr treats * as special character, so this will throw an error
echo "Product : " $(expr $num1 \* $num2 )


echo "Quotient" $(expr $num1 / $num2 )
echo "Remainder : " $(expr $num1 % $num2 )