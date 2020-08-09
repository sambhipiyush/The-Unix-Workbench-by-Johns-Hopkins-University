#!/bin/bash
# File: simpleifelse.sh
echo "Start program"

if [[ "$1" -eq 4 ]]
then
  echo "Thank you for entering $1"
else
  echo "You entered $1. It's not the
  answer I'm looking for."
fi

echo 'End program'
