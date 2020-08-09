#!/usr/bin/env bash
echo -e "parallel --tag echo foo-{} ::: A B C\n"
parallel --tag echo foo-{} ::: A B C
echo
echo -e "parallel --tagstring {}-bar echo foo-{} ::: A B C\n"
parallel --tagstring {}-bar echo foo-{} ::: A B C
echo
echo -e "parallel --dryrun echo {} ::: A B C\n"
parallel --dryrun echo {} ::: A B C
echo
echo -e "parallel --verbose echo {} ::: A B C\n"
parallel --verbose echo {} ::: A B C
echo
echo -e "half_line_print() {
 printf \"%s-start\n%s\" \$1 \$1
 sleep \$1
 printf \"%s\n\" -middle
 echo \$1-end
}
export -f half_line_print"
function half_line_print() {
  printf "%s-start\n%s" $1 $1
  sleep $1
  printf "%s\n" -middle
  echo $1-end
}
export -f half_line_print
echo
echo -e "parallel -j2 half_line_print ::: 4 2 1\n"
parallel -j2 half_line_print ::: 4 2 1
echo
echo -e "parallel -j2 -k half_line_print ::: 4 2 1\n"
parallel -j2 -k half_line_print ::: 4 2 1
echo
echo -e "parallel -j2 half_line_print ::: 4 2 1\n"
parallel -j2 half_line_print ::: 4 2 1
echo
echo -e "parallel -j2 --ungroup half_line_print ::: 4 2 1\n"
parallel -j2 --ungroup half_line_print ::: 4 2 1
echo
echo -e "parallel -j2 --linebuffer half_line_print ::: 4 2 1\n"
parallel -j2 --linebuffer half_line_print ::: 4 2 1
echo
echo -e "parallel -j4 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4\n"
parallel -j4 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4
echo
echo -e "parallel -j4 --line-buffer 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4\n"
parallel -j4 --line-buffer 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4
echo
echo -e "parallel -j4 -k --line-buffer 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4\n"
parallel -j4 -k --line-buffer 'echo {}-a;sleep {};echo {}-b' ::: 1 3 2 4
echo
echo -e "parallel --files echo ::: A B C\n"
parallel --files echo ::: A B C
echo
echo -e "parallel --tmpdir /var/tmp --files echo ::: A B C\n"
parallel --tmpdir /var/tmp --files echo ::: A B C
echo
echo -e "TMPDIR=/var/tmp parallel --files echo ::: A B C\n"
TMPDIR=/var/tmp parallel --files echo ::: A B C
echo
echo -e "parallel --results outdir echo ::: A B C\n"
parallel --results outdir echo ::: A B C
echo
echo -e "parallel --header : --results outdir echo ::: f1 A B ::: f2 C D\n"
parallel --header : --results outdir echo ::: f1 A B ::: f2 C D
echo
echo -e "parallel --results my{1}-{2}.out echo ::: A B ::: C D\n"
parallel --results my{1}-{2}.out echo ::: A B ::: C D
echo
echo -e "parallel --results my{1}-{2}-dir/ echo ::: A B ::: C D\n"
parallel --results my{1}-{2}-dir/ echo ::: A B ::: C D
echo
echo -e "parallel --results my.csv echo ::: A B ::: C D\n"
parallel --results my.csv echo ::: A B ::: C D
echo
exit 0
