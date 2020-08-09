#!/bin/bash
# File tgif.sh
today=$(date)
if [[ "$today" =~ ^Fri ]]
then
  echo "Thank Moses it's Friday."
fi
