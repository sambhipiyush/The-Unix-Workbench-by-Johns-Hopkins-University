#!/bin/bash
# File: plier.sh
function plier() {
  local product=1
  for element in "$@"
  do
    product=$((product*element))
  done
  echo $product
}
