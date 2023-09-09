#! /bin/bash

echo "PLEASE SELECT A GIVEN NUMBER FROM THE MENU"

select name in Ferrari Lamborghini Bugati McLaren Porsche 'Rolls royce' Volvo Tayota
do
case $name in
	Ferrari)
		echo $name is one of the old car brands 'in' the world which has a great reputation and well known for its sexy looks, $name has scored the highest championships 'in' Formula1
		echo some of the cars from $name are
		echo $name 488 pista
		echo $name F8 tributo
		echo $name Sf90 stradale
		echo $name Roma
		echo $name 812
		;;
	Lamborghini)
                echo $name was once a tractor producer, but started manufacturing worlds favourite beautiful cars after being taunted by the ferrari, $name claims to have the highest fans claiming $name as the worlds most beautiful design
		echo some of the cars from $name are
		echo $name hurracan
		echo $name aventador
		echo $name urus
		echo $name gallardo
                ;;
	Bugati)
                echo well here you choose the worlds most fastest 'make' and thats $name, no matter which ever car tries to 'break' this french "make"\'s record they will come back faster again
		echo some of the cars from $name are
		echo $name veyron
		echo $name chiron
                ;;
	McLaren)
                echo "$name is the fastest 'in' the supercar category, $name has proper engineered aerodynamics that pushes it to gap most fast cars, $name was not just made 'for' beauty but was made 'for' speed"
		echo some of the cars from $name are
		echo $name 720s
		echo $name speedtail
		echo $name artura
                ;;
	Porsche)
                echo $name cute little german monster, also called as king of the track 'for' winning the most number of races, this brand was the first to 'make' a hybrid engine, $name 'make' still use the traditional flat type engines unlike any other supercars, $name offers coupes, sport SUV, crossovers. $name\'s are very fast with unique design when compared to other supercars.
		echo some of the cars from $name are
		echo $name 718 cayman
		echo $name 911 carrera
		echo $name panamera
		echo $name taycan
		echo $name cayanne
		echo $name macan
                ;;
	'Rolls royce')
                echo $name the queen of cars with the highest reputation in making the worlds most luxurious car that you dont even feel like you are driving, these cars are mostly used by the royal families of the world, it is a prestige for a family to own a $name
		echo some of the cars from $name are
		echo $name ghost
		echo $name cullinan
		echo $name dawn
                ;;
	Volvo)
                echo $name from sweden is the worlds most safest car, they usually test their car in the worstest worst condition, they are also luxurious and classy design, they also tend to give better mileage
		echo some of the cars from $name are
		echo $name XC90
		echo $name XC30
                ;;
	Tayota)
                echo $name the japan 'make' has impressed the auto enthusiasts with some highly incredible and tuning versatile cars like supra, camry and landcruiser specially $name supra, they have their cars almost all over the world.
		echo $name supra
		echo $name land cruiser
		echo $name corolla
		echo $name camry
		echo $name fortuner
                ;;
esac
done
