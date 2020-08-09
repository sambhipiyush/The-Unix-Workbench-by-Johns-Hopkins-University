#!/bin/bash
# File proper.sh
if [[ "$1" =~ ^[A-Z] ]]
then
  echo "$1: How proper!"
else
  echo "$1: How improper!"
fi

