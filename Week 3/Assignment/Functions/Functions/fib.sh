#Write a function called fib which prints
#the number of fibonacci numbers specified.

function fib {
	local num=$1
	 if [[ $num -le 0 ]]
        then
                echo "Try again: give some number greather than 0"
        fi 

	local arr=()
	if [[ $num -eq 1 ]]
	then
	arr[0]=0
	elif [[ $num -eq 2 ]]
	then
	arr[0]=0
	arr[1]=1
	elif [[ $num -gt 2 ]]
	then
		arr[0]=0
	        arr[1]=1
		for (( i=2; i<$num; i++ ))
		do
		arr[i]=$((arr[i-2]+arr[i-1]))
		done
	fi


echo "${arr[*]}"

}
