#!/bin/bash

#Create 100 text files using brace expansion.

for i in {1..100}
do
	touch test$i.txt 
	
done

