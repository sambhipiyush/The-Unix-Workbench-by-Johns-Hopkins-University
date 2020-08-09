#!/bin/bash
# File isiteven.sh
function isItEven() {
  if [[ "$1" =~ ^[0-9]+$ ]]
  then
    if [[ "$1"%2 -eq 0 ]]
    then
      echo 1
      return 1
    else [[ "$1"%2 -eq 1 ]]
      echo 0
      return 0
    fi
  else
    echo "$1: Invalid input."
  fi
}

isItEven "$@"

