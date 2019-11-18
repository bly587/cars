#! /bin/bash
# cars.sh
# Titan Mitchell

choice=0
while [ "$choice" -le 3 ] 
do 
	echo "1) To enter new car"
	echo "2) Display list of cars"
	echo "3) Quit and exit the program"
	read choice

	case "$choice" in
		"1") echo "Enter Year" 
			read year
			echo "Enter Make"
			read make
			echo "Enter Model"
			read model
			echo "$year:$make:$model" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3")
			exit 0 
			echo "Should exit";;
		*) echo "Sorry invalid input";;
	esac	
done
	

