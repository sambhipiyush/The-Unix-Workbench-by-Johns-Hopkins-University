#Write a function called nevens which prints
#the number of even numbers when provided with
#a sequence of numbers. Use isiteven when
#writing this function.

function nevens {
	local count=0
	for arg in $@
	do
		if [[ $((arg%2)) -eq 0 ]]
		then
			let count=$count+1
		else
			let count=$count+0
		fi
	done
	echo "$count"
}
