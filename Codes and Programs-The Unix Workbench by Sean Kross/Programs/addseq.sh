#!/bin/bash
# File: addseq.sh
function addseq() {
  sum=0
  for element in "$@"
  do
    sum=$((sum+element))
  done
  echo $sum
}
