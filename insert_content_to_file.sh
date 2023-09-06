#! /bin/bash

read -p "please enter the file name: " file

if [ -e $file ]
then
	if [ -r $file ]
	then
		echo "This file has read permission" > $file
		echo "This content was added to this file by a shellscript, and the author of the script is kishore" > $file
		if [ -w $file ]
		then
			echo "This file also has write permission" >> $file
			echo This file is writable
			cat $file
		else
			echo "This file is not writable"
		fi
	else
		echo "this file doesnot have read permission"
	fi
else
	echo $file not found
fi
