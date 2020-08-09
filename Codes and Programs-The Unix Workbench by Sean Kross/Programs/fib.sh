#!/bin/bash
# File: fib.sh
function fibonacci() {
  fibcount=$1
  if [[ $fibcount -eq 0 ]]
  then
    echo -n 0
elif [[ $fibcount -eq 1 ]] || [[ $fibcount -eq -1 ]]
  then
    echo -n 0 1
elif [[ $fibcount -gt 1 ]]
  then
    fib0=0
    fib1=1
    echo -n $fib0 $fib1
    for _ in $(seq 2 "$fibcount")
    do
      nextfib=$((fib0+fib1))
      echo -n " "$nextfib
      fib0=$((fib1))
      fib1=$((nextfib))
    done
elif [[ $fibcount -lt -1 ]]
  then
    fib0=0
    fib1=1
    echo -n $fib0 $fib1
    for _ in $(seq -2 -1 "$fibcount")
    do
      nextfib=$((fib0-fib1))
      echo -n " "$nextfib
      fib0=$((fib1))
      fib1=$((nextfib))
    done
  else
    echo "Invalid input: ""$*"
  fi
  echo
}
