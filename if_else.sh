#! /bin/bash

mycar="hyundaieon"

read -p "type the car name: " car

if [ $mycar == $car ]
then
    echo $car is your car
elif [ $car = maruti800 ]
then
    echo $car is your car

else
    echo $car is not your car
fi


read -p "please type a number: " number

if [ $number -gt 50 ]
then
	echo the number you have entered is greater than 50
else
	echo the number you have entered is lesser than 50
fi
