#!/bin/bash
# File: addseq2.sh
function addseq2() {
  local sum=0
  for element in "$@"
  do
    sum=$((sum+element))
  done
  echo $sum
}
