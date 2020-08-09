#!/bin/bash
# File: whileloop.sh
count=3
while [[ "$count" -gt 0 ]]
do
  echo "count is equal to $count"
  count=$((count-1))
done
