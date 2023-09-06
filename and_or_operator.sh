#! /bin/bash

read -p "type students marks(please type value between 0 and 100): " marks

if [ $marks -lt 35 ]
then
	echo "betterluck next time you have failed"
elif [ $marks -gt 35 ] && [ $marks -lt 50 ]				# use && to add a and operator
then
	echo "student has passed and has scored second class"
elif [ $marks -gt 50 ] && [ $marks -lt 75 ]
then
	echo "student has passed and has scored first class"
elif [ $marks -gt 75 ] && [ $marks -lt 100 ]
then
        echo "student has passed and has scored distinction"
elif [ $marks -eq 35 ] || [ $marks -eq 50 ] || [ $marks -eq 75 ] || [ $marks -eq 100 ]		# use || to add a or operator
then
	echo "you have passed, please contact your principal for a class"
else
	echo please type a valid value
fi

# -gt = greater than
# -lt = lesser than
# -eq = equal to
# -ne = not equal to
# -ge = greater than or equal to
# -le = lesser than or equal to
