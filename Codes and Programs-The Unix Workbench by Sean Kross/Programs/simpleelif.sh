#!/usr/bin/env bash
# File: simpleelif.sh
echo "Start program"

if [[ "$1" -eq 4 ]]
then
  echo "$1 is my favourite number."
elif [[ "$1" -gt 3 ]]
then
  echo "$1 is a great number
  greater than 3."
else
  echo "You entered $1. It's not the
input I expect."
fi
echo 'End program'
