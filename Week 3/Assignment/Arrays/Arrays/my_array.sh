
#Write a bash script where you define an array inside of the script, and the first argument for #the script indicates the index of the array element that is printed to the console when the #script is run.


fruits=(apple banana peach plum pear kiwi grapes strawberry)

if [[ "$1" =~ ^[0-9]+$ ]]
then
	if [[ "$1" -ge 0 ]] && [[ "$1" -lt "${#fruits[*]}" ]]
	then
		echo "${fruits[$1]}"
	else
		echo "Your number is not correct"
	fi
else
	echo "Next time enter some number"
fi

