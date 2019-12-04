#! /bin/bash
#cars.sh
#Joseph Sneifer
Continue=true
while :
do 
	echo "1. Enter a new car"
	echo "2. Display a list of cars"
	echo "3. Quit and exit the program"
	read answer
	case $answer in
		"1") read -p "Enter year: " year
			read -p "Enter make: " make
			read -p "Enter model: " model
			NewCar="$year:$make:$model"
			echo "$NewCar"
			echo "$NewCar" >> My_old_cars.txt;;	
		"2") while read p;
		do
			echo "$p"
		done <My_old_cars.txt;;
		"3") echo "Goodbye"
			exit 0;;
esac
done
