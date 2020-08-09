#!/bin/bash
# File: sumarray.sh
firstarray=(a ab abe abs abu ace ack act
ada add ade)
secondarray=(ba be bi bo bab bad
bae bag bah bam ban bar bat baw bay)
echo $((${#firstarray[*]} + ${#secondarray[*]}))
