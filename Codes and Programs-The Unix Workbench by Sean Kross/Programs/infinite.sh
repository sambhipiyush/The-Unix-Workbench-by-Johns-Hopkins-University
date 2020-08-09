#!/bin/bash
until [ "$COUNT" -lt 1 ]; do
  COUNT=$(cat /proc/sys/kernel/random/entropy_avail)
  echo "$(date) COUNTER $COUNT"
done
