#! /bin/bash
#cars.sh
#Joseph Sneifer
while :
do 
	echo "1. Enter a new car"
	echo "2. Display a list of cars"
	echo "3. Quit and exit the program"
	read -r answer
	case $answer in
		"1") read -rp "Enter year: " year
			read -rp "Enter make: " make
			read -rp "Enter model: " model
			NewCar="$year:$make:$model"
			echo "$NewCar"
			echo "$NewCar" >> My_old_cars.txt;;	
		"2") while read -r p;
		do
			echo "$p"
		done <My_old_cars.txt;;
		"3") echo "Goodbye"
			exit 0;;
esac
done
