#!/bin/bash
# File: howodd.sh
source nevens.sh
function howodd() {
  evens=$(nEvens "$@")
  odds=$(($#-evens))
  percent=$((odds*100))
  percent=$((percent/$#))
  echo $percent%
}

