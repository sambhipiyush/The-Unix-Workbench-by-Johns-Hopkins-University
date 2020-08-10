#!/bin/bash

: '1. Write a Bash program where you assign two numbers to different variables, and then the program prints the sum of those variables.'

x=7

y=8

echo $(($x + $y))

: '2. Write another Bash program where you assign two strings to different variables, and then the program prints both of those strings. Write a version where the strings are printed on the same line, and a version where the strings are printed on different lines.'

a="Good"

b="Morning"

echo "$a $b"

echo -e  "$a\\n$b"

: '3. Write a Bash program that prints the number of arguments provided to that program multiplied by the first argument provided to the program.'

echo $(($#*$1))







