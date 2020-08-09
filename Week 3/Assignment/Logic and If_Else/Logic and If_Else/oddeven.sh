#Write a Bash script that takes one argument and prints “even”
#if the first argument is an even number or “odd” if the first
#argument is an odd number.

if [[ "$1" =~ ^[0-9]+$ ]] 
then
	if [[ $1%2 -eq 0 ]]
	then
		echo "even"
	else
		echo "odd"
	fi
else
	echo "not a number"
fi
