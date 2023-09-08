#! /bin/bash

read -p "Please enter the tables you want: " tables

for num in {1..10..2}		#here 1 is the starting number, 10 is the ending number and 2 in the increment value
do
	answer=$(($tables * $num))
	echo $tables '*' $num '=' $answer
done
