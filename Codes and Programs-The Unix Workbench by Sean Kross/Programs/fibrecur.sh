#!/bin/bash
# fibrecur.sh - Shell script to to find ith fibonacci number  of given command line arg i

function fibrecur() {
  local i=$1
  local f
  local g
  declare -i i
  declare -i f
  declare -i g

  # fibrecur() is called until the value of $g is returned and it is < 2
  # This is called the recursion
  [ "$i" -lt 2 ] && echo "$i" || { f=$(( i - 1));
    f=$(fibrecur $f);g=$(( i -
  2));g=$(fibrecur $g); g=$(( f + g )); echo $g; }
}


# display usage
[ $# -eq 0 ] && { echo "Usage: $0 number";
exit 1; }

# call fibrecur
fibrecur "$1"
