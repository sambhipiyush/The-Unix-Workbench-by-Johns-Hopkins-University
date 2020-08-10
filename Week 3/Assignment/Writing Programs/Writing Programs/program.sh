#!/bin/bash

: '1. Make a script executable.

	Modify the file using the below command 

	chmod u+x examplefile.sh 

	we are granting x -Executable access to u -User '

: ' 3. Write a program called range that takes one number as an argument and prints all of the numbers between that number and 0.'

function range {

	read -p "range " x

	if [[ $x -gt 0 ]]
	then 
		echo $(seq -s ' ' 0 $x)
	else
		echo $(seq -s ' ' $x 1 0)
	fi
}

range

: ' 4. Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.'

function extremes {
	read -p "extremes " 

	min=0

	max=0
	
	echo "$@"

	for i in "$@"
	do
		if [[ $i -gt $max ]]
		then
				max=$i
		else
				min=$i
		fi
	done

}

extremes

