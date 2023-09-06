#! /bin/bash

read -p "Please type the first number: " num1
read -p "Please type the second number: " num2

add=$(( $num1 + $num2 ))				# use a $ symbol along with double brackets and type the variable names as given in this line to do a arithmetic calculation
sub=$(( $num1 - $num2 ))
multi=$(( $num1 * $num2 ))
divide=$(( $num1 / $num2 ))
reminder=$(( $num1 % $num2 ))

echo addition of both numbers are $add
echo subtraction of both numbers are $sub
echo multiplication of both numbers are $multi
echo division of both numbers are $divide
echo reminder of both numbers are $reminder

echo $( expr $num1 + $num2 )
echo $( expr $num1 - $num2 )
echo $( expr $num1 \* $num2 )
echo $( expr $num1 / $num2 )
echo $( expr $num1 % $num2 )
