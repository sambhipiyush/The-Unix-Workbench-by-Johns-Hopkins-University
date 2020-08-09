#!/usr/bin/env bash
echo -e "cat num1000000 | parallel --pipe wc\n"
cat num1000000 | parallel --pipe wc
echo
echo -e "cat num1000000 | parallel --pipe --block 2M wc\n"
cat num1000000 | parallel --pipe --block 2M wc
echo
echo -e "cat num1000000 | parallel --pipe -j4 --round-robin wc\n"
cat num1000000 | parallel --pipe -j4 --round-robin wc
echo
echo -e "cat num1000000 | parallel --pipe -j4 --keep-order --round-robin wc\n"
cat num1000000 | parallel --pipe -j4 --keep-order --round-robin wc
echo
echo -e "cat num1000000 | parallel --pipe -N140000 wc\n"
cat num1000000 | parallel --pipe -N140000 wc
echo
echo -e "cat num1000000 | parallel --pipe -L75 wc\n"
cat num1000000 | parallel --keep-order --pipe -L75 wc
echo
echo -e "echo /foo, bar/, /baz, qux/, | \
 parallel --dryrun -kN1 --recend ', ' --pipe echo JOB{#}\;cat\;echo END\n"
echo /foo, bar/, /baz, qux/, | \
  parallel --dryrun -kN1 --recend ', ' --pipe echo JOB{#}\;cat\;echo END
echo
echo -e "echo -n '/foo, bar/, /baz, qux/, ' | \
 parallel -kN1 --recend ', ' --pipe echo JOB{#}\;cat\;echo END\n"
echo -n '/foo, bar/, /baz, qux/, ' | \
  parallel -kN1 --recend ', ' --pipe echo JOB{#}\;cat\;echo END
echo
echo -e "echo -n '/foo, bar/, /baz, qux/, ' | \
 parallel -kN1 --recstart / --pipe echo JOB{#}\;cat\;echo END\n"
echo -n '/foo, bar/, /baz, qux/, ' | \
  parallel -kN1 --recstart / --pipe echo JOB{#}\;cat\;echo END
echo
echo -e "echo /foo, bar/, /baz, qux/, | \
 parallel -kN1 --recend ', ' --recstart / --pipe \
 echo JOB{#}\;cat\;echo END\n"
echo -n '/foo, bar/, /baz, qux/, ' | \
  parallel -kN1 --recend ', ' --recstart / --pipe \
  echo JOB{#}\;cat\;echo END
echo
echo -e "echo -n 'foo,bar,_baz,__qux ' | \
 parallel -kN1 --regexp --recend ,_* --pipe \
 echo JOB{#}\;cat\;echo END\n"
echo -n 'foo,bar,_baz,__qux ' | \
  parallel -kN1 --regexp --recend ,_* --pipe \
  echo JOB{#}\;cat\;echo END
echo
echo -e "echo -n 'foo,bar,_baz,__qux' | \
 parallel -kN1 --rrs --regexp --recend ,_* --pipe \
 echo JOB{#}\;cat\;echo END\n"
echo -n 'foo,bar,_baz,__qux' | \
  parallel -kN1 --rrs --regexp --recend ,_* --pipe \
  echo JOB{#}\;cat\;echo END
echo
echo -e "echo -n 'foo,bar,_baz,__qux' | \
 parallel -kN1 --rrs --regexp --recend ,_* --pipe \
 echo JOB{#}';'cat';'echo END\n"
echo -n 'foo,bar,_baz,__qux' | \
  parallel -kN1 --rrs --regexp --recend ,_* --pipe \
  echo JOB{#}';'cat';'echo END
echo
echo -e "cat num_%header | \
 parallel --dryrun --header '(%.*\n)*' --pipe -N3 echo JOB{#}\;cat\n"
cat num_%header | \
  parallel --dryrun --header '(%.*\n)*' --pipe -N3 echo JOB{#}\;cat
echo
echo -e "cat num_%header | \
 parallel -k --header '(%.*\n)*' --pipe -N3 echo JOB{#}\;cat\n"
cat num_%header | \
  parallel -k --header '(%.*\n)*' --pipe -N3 echo JOB{#}\;cat
echo
echo -e "cat num_%header | parallel --header 2 --pipe -N3 echo JOB{#}\;cat\n"
cat num_%header | parallel --header 2 --pipe -N3 echo JOB{#}\;cat
echo
echo -e "cat fixedlen | parallel --pipe --header .{4} --block 3 --recend '' \
 'echo start; cat; echo'\n"
cat fixedlen | parallel --pipe --header .{4} --block 3 --recend '' \
  'echo start; cat; echo'
echo
echo -e "cat num1000000 | parallel --pipe --cat wc {}\n"
cat num1000000 | parallel --pipe --cat wc {}
echo
echo -e "cat num1000000 | parallel --pipe --cat --gnu time wc {}\n"
cat num1000000 | parallel --pipe --cat --gnu time wc {}
echo
echo -e "cat num1000000 | parallel --pipe --fifo --gnu time wc {}\n"
cat num1000000 | parallel --pipe --fifo --gnu time wc {}
echo
echo -e "parallel --pipepart -a num1000000 --block 3m wc\n"
parallel --pipepart -a num1000000 --block 3m wc
echo
echo -e "parallel --pipepart -a num1000000 --block -3 -j5 -k wc\n"
parallel --pipepart -a num1000000 --block -3 -j5 -k wc
echo
echo -e "seq 1000 | parallel --dryrun --pipe --tee -v wc {} ::: -w -l -c\n"
seq 1000 | parallel --dryrun --pipe --tee -v wc {} ::: -w -l -c
echo
echo -e "seq 1000 | parallel --pipe --tee -v wc {} ::: -w -l -c\n"
seq 1000 | parallel --pipe --tee -v wc {} ::: -w -l -c
echo
echo -e "seq 30 | parallel --dryrun -v --pipe --tee --tag grep {} ::: 4 5 6\n"
seq 30 | parallel --dryrun -v --pipe --tee --tag grep {} ::: 4 5 6
echo
echo -e "seq 30 | parallel -v --pipe --tee --tag grep {} ::: 4 5 6\n"
seq 30 | parallel -v --pipe --tee --tag grep {} ::: 4 5 6
echo
exit 0
