#Write a function called isiteven that prints 1
#if a number is even or 0 a number is not even.


function isiteven {
	if [[ $(($1%2)) -eq 0 ]]
	then
		echo "1"
	else
		echo "0"
	fi
}
