#! /bin/bash

cars=("ferrari" "Mclaren" "porsche" "lamborghini" "astonmartin" "audi" "mercedes" "BMW")  	#dontgive space before and after = while defining a variable, dont use commas while defining an array

echo ${cars[@]}		#use @ symbol to print whole array
echo ${cars[4]}		#follow to method to display a particular index value of an array
echo ${!cars[@]}	#use a ! to print the indexes of an array
echo ${#cars[@]}	#use a # to print the length of an array

cars[8]='jaguar'	#to add add a value to the array
cars[4]='bentley'	#to change the value of 4th index

echo ${cars[@]}

unset cars[6]

echo ${cars[@]}
