#! /bin/bash

mycar="hyundaieon"

read -p "type the car name: " car

if [ $mycar == $car ]
then
    echo $car is your car
else
    echo $car is not your car
fi
