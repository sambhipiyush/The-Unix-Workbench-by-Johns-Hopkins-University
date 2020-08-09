#!/usr/bin/env bash
echo -e "seq 5 | parallel seq {} '>' example.{}\n"
seq 5 | parallel seq {} '>' example.{}
echo
echo -e "parallel echo ::: 1 2 3 4 5\n"
parallel echo ::: 1 2 3 4 5
echo
echo -e "parallel wc ::: example.*\n"
parallel wc ::: example.*
echo
echo -e "parallel echo ::: S M L ::: Green Red\n"
parallel echo ::: S M L ::: Green Red
echo
echo -e "find example.* -print | parallel echo File\n"
find example.* -print | parallel echo File
echo
echo -e "parallel wc -l ::: example.*\n"
parallel wc -l ::: example.*
echo
echo -e "parallel echo counting lines';' wc -l ::: example.*\n"
parallel echo counting lines';' wc -l ::: example.*
echo
echo -e "parallel echo counting {}';' wc -l {} ::: example.*\n"
parallel echo counting {}';' wc -l {} ::: example.*
echo
echo -e "parallel echo count {1} in {2}';' wc {1} {2} ::: -l -c ::: example.*\n"
parallel echo count {1} in {2}';' wc {1} {2} ::: -l -c ::: example.*
echo
echo -e "parallel --dry-run echo count {1} in {2}';' wc {1} {2} ::: -l -c \
 ::: example.*\n"
parallel --dry-run echo count {1} in {2}';' wc {1} {2} ::: -l -c \
  ::: example.*
echo
echo -e "parallel sleep {}';' echo {} done ::: 5 4 3 2 1\n"
parallel sleep {}';' echo {} done ::: 5 4 3 2 1
echo
echo -e "parallel --keep-order sleep {}';' echo {} done ::: 5 4 3 2 1\n"
parallel --keep-order sleep {}';' echo {} done ::: 5 4 3 2 1
echo
echo -e "parallel --jobs 2 sleep {}';' echo {} done ::: 5 4 3 1 2\n"
parallel --jobs 2 sleep {}';' echo {} done ::: 5 4 3 1 2
echo
echo -e "parallel --jobs 5 sleep {}';' echo {} done ::: 5 4 3 1 2\n"
parallel --jobs 5 sleep {}';' echo {} done ::: 5 4 3 1 2
echo
echo -e "parallel --jobs 0 sleep {}';' echo {} done ::: 5 4 3 1 2\n"
parallel --jobs 0 sleep {}';' echo {} done ::: 5 4 3 1 2
echo
echo -e "seq 1000000 | parallel --pipe wc\n"
seq 1000000 | parallel --pipe wc
echo
exit 0
