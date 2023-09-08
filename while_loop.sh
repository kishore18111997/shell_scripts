#! /bin/bash

read -p "Type the number of tables: " num

multiply=1

while [ $multiply -le 10 ]
do
	answer=$(( $num * $multiply ))
	echo $num "*" $multiply "=" $answer
	multiply=$(( $multiply + 1))
done
