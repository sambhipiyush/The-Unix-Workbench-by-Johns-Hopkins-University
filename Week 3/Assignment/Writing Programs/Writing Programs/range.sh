#!/usr/bin/env bash

#Write a program called range that takes one number as an argument
#and prints all of the numbers between that number and 0.

function range {
	local num=$1

	if [[ $num -gt 0 ]]
	then
		eval echo {0..$1}
	elif [[ $num -lt 0 ]]
	then
		eval echo {$1..0}
	elif [[ $num -eq 0 ]]
	then
		echo 0
	fi
}
