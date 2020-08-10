#!/bin/bash
 
: 'Logic If Else
 #2. Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.'
  
: 'We read the value into n and evaluate whether the first argument entered into is a even or odd value. We perform a modulo division and compare the remainder value to 0.'

#we can use either (( )) or [[ $(( n % 2 )) == 0 ]]
read n
  
if [[ $(( n % 2 )) == 0 ]]
then 
	echo "even"
else
  echo "odd"
fi
 
: ' #3. Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.'

read x y
 
re='^[0-9]+$'
  
if [[ $x =~ $re && $y =~ $re ]]
then
	echo 'expr $x + $y'
 	echo $((x+y))
else
	echo $x $y
fi
 
: 'Logical expression
 1. Write a Bash script that takes a string as an argument and prints “how proper” if the string starts with a capital letter.'
 
read n
 
re="^[A-Z]+$"
if [[ "${n:0:1}" =~ $re ]]
then 
 echo "how proper"
fi
  
: ' #4. Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).'

day=$(date +%a)
 
if [[ "$day" = "Fri" ]]
then
 	echo "Thank Moses it's Friday"
fi
 
echo $day

