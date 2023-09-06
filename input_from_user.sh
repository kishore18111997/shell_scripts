#! /bin/bash

read -p "please type your name: " name 		#use -p flag to enter the name in same line
echo your name is $name

echo "please type your friends name: "		#without -p flag we type the names in next line
read frnd1 frnd2 frnd3

echo you have 3 friends and they are $frnd1 $frnd2 $frnd3

read -sp "please type your password: " passwd

echo your password is $passwd

echo "name all cars that you have driven: "

read -a cars

echo ${cars[0]}, ${cars[1]}
