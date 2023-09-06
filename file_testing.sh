#! /bin/bash

# this file consists of script to work with files and directory

read -p "enter the name of file or directory(use only two options 'file' or 'directory'): " file

if [ -f $file ]				# -f flag to check if it is a file and -d to check if it is a directory
then					# there are different flags as well -e to check a file is present or not, -b to check wether file is a image or video, -c to check wether file is a character file, -s to check wether a file is empty or not
	echo $file is a file
else
	echo $file is a directory
fi


read -p "enter the name of file: " file_check

if [ -e $file_check ]
then
	echo $file_check found
else
	echo $file_check found
fi

if [ -s $file ]
then
	echo $file is not empty
else
	echo $file is empty
fi


# there are other flags also
# -r to check wether file has read permission
# -w to check wether file has write permission
# -x to check wether file has execute permission
