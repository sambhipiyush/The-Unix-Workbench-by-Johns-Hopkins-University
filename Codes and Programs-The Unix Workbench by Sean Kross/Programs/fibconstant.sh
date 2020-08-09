#!/bin/bash
# File: fibconstant.sh
echo "((0.5+sqrt(5)/2)^$1-(sqrt(5)/2-0.5)^$1)/sqrt(5)" \
  | printf "%0.0f" "$(bc -l)"
