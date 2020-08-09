#!/bin/bash
# File: nevens.sh
# shellcheck disable=SC1091
source isiteven.sh
function nEvens() {
  local count=0
  for element in "$@"
  do
    isEven=$(isItEven "$element")
    if [[ 1 -eq "$isEven" ]]
    then
      count=$((count+1))
    fi
  done
  echo $count
}
