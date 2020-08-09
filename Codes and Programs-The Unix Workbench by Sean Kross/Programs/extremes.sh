#!/bin/bash
# File: extremes.sh
if [[ $# -gt 0 ]]
then
  echo "$*" | tr '[:space:]' '\n' |
  sort -n | head -1
  echo "$*" | tr '[:space:]' '\n' |
  sort -n | tail -1
fi
