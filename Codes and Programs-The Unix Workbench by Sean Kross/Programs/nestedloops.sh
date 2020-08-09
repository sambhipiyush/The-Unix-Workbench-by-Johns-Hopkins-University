#!/bin/bash
# File: nestedloops.sh
for number in {1..3}
do
  for letter in a b
  do
    echo "number is $number, letter is $letter"
  done
done
