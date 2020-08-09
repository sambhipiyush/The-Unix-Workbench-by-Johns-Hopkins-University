#!/bin/bash
# File: fibrecursive.sh
declare -a memo;

function fibseq() {
  if [[ $1 -ge 0 ]] ;  then
    for i in $(seq 0 "$1")
    do
      num=$(fib "$i")
      echo -n "$num "
    done
  else
    for i in $(seq 0 -1 "$1")
    do
      num=$(fib "$i")
      echo -n "$num "
    done
  fi
  echo
}


function fib() {
  if [[ $1 -eq 0 ]]; then
    echo 0
  elif [[ $1 -eq 1 ]] || [[ $1 -eq -1 ]]; then
    echo 1
  elif [[ $1 -gt 1 ]]; then
    if [[ ! (-z ${memo[$1]}) ]]; then
      echo "${memo[$1]}"
    else
      value=$(($(fib "$(($1-2))") + $(fib "$(($1-1))")))
      echo $value
      memo[$1]=$value
    fi
  else
    value=$(fib "$((-$1))")
    if [[ $1%2 -eq 0 ]]
    then
      value=$((-1*value))
    fi
    echo $value
  fi
}

fibseq "$@"
