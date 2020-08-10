#!/bin/bash

: ' 1.Use pipes to figure out how many US states contain the word “New.” 
	We have the states information stored in canada.txt file. We can use grep to find that information.'

egrep "New" canada.txt | wc -l

: ' alternate way using sed '

cat canada.txt | sed -n /"New"/p |wc -l

: ' 2.Examine your ~/.bash_history to try to figure out how many unique commands you’ve ever used. (You may need to look up how to use the uniq and sort commands).'

: 'i modified the answer just to get the command count instead of the whole command dump. Command dump can be obtaing by not piping wc -l '

cat ~/.bash_history | sort | uniq | wc -l



