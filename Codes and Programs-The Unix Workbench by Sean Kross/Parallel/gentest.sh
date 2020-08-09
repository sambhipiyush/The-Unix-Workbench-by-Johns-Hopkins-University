#!/usr/bin/env bash
parallel -k echo ::: A B C > abc-file
parallel -k echo ::: D E F > def-file
perl -e 'printf "A\0B\0C\0"' > abc0-file
perl -e 'printf "A_B_C_"' > abc_-file
perl -e 'printf "f1\tf2\nA\tB\nC\tD\n"' > tsv-file.tsv
perl -e 'for(1..8){print "$_\n"}' > num8
perl -e 'for(1..128){print "$_\n"}' > num128
perl -e 'for(1..30000){print "$_\n"}' > num30000
perl -e 'for(1..1000000){print "$_\n"}' > num1000000
(echo %head1; echo %head2; \
  perl -e 'for(1..10){print "$_\n"}') > num_%header
perl -e 'print "HHHHAAABBBCCC"' > fixedlen
exit 0
