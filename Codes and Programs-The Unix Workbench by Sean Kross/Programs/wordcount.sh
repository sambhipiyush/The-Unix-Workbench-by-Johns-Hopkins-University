#!/bin/bash
# File: wordcount.sh
tr -cs A-Za-z '\n' | tr '[:upper:]' '[:lower:]' | sort |
uniq -c | sort -rn | head -"${1}"
