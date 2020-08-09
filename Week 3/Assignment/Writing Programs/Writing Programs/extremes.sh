#!/usr/bin/env bash

#Write a program called extremes which prints the maximum
#and minimum values of a sequence of numbers.


function extremes {
	local arr=($@)

	local min=${arr[0]}
	local max=${arr[0]}

	for i in ${arr[*]}
	do
		if [[ "$i" -gt "$max" ]]
		then
			let max="$i"
		fi

		if [[ "$i" -lt "$min" ]]
		then
			let min="$i"
		fi
	done

echo "$min $max"
}
