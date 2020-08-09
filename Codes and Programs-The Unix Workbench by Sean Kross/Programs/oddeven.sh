#!/bin/bash
# File oddeven.sh
if [[ "$1" =~ ^[0-9]+$ ]]
then
  if [[ "$1"%2 -eq 0 ]]
  then
    echo "$1: Even"
  else [[ "$1"%2 -eq 1 ]]
    echo "$1: Odd"
  fi
else
  echo "$1: Invalid input."
fi
