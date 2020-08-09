#Write a function called howodd which prints
#the percentage of odd numbers in a sequence
#of numbers.
#Use nevens when writing this function.

function howodd {
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
	let count=$count
	echo "$count"

	}
local sum=$(nevens $@)
local result=$(($#-$sum))

local odd=$(($result*100/$#))
echo "$odd%"

}
