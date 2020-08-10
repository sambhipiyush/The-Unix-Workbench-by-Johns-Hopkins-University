#!/bin/bash

: 'Arrays
#2. Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).'
  
declare -a WHISKEY=(Makers Weller Hibiki Nikka Pappy Lagavulin Laphroaig)
  
declare -a PERFUME=(Aramis Armani Dior Chanel Prada Anateus Savauge)
 
echo $((${#WHISKEY[@]}+${#PERFUME[@]}))
 
: '#1: Write a bash script where you define an array inside of the script, and the first argument for the script indicates the index of the array element that is printed to the console when the script is run.'

declare -a SKILLS=(Python Sql R Shell Aws Tableau Spark Hadoop Scala Github)
 
echo ${SKILLS[$1]}

#length=${#SKILLS[@]}

#extending the code to print index and the value of index inputted and iterate over the array

#read index

#echo $index, ${SKILLS[$INDEX]}

for i in "${!SKILLS[@]}"
do
	echo "$i" "${SKILLS[$i]}"
done



 
  



