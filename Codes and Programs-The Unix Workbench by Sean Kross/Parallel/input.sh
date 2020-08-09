#!/usr/bin/env bash
echo -e "parallel echo ::: A B C\n"
parallel echo ::: A B C
echo
echo -e "parallel -a abc-file echo\n"
parallel -a abc-file echo
echo
echo -e "cat abc-file | parallel echo\n"
cat abc-file | parallel echo
echo
echo -e "mkfifo myfifo\n"
echo -e "cat abc-file > myfifo &\n"
echo -e "parallel -a myfifo echo\n"
echo -e "rm myfifo\n"
mkfifo myfifo
cat abc-file > myfifo &
parallel -a myfifo echo
rm myfifo
echo
echo -e "parallel echo :::: <(cat abc-file)\n"
parallel echo :::: <(cat abc-file)
echo
echo -e "parallel echo ::: A B C ::: D E F\n"
parallel echo ::: A B C ::: D E F
echo
echo -e "parallel -a abc-file -a def-file echo\n"
parallel -a abc-file -a def-file echo
echo
echo -e "cat abc-file | parallel -a - -a def-file echo\n"
cat abc-file | parallel -a - -a def-file echo
echo
echo -e "cat abc-file | parallel echo :::: - def-file\n"
cat abc-file | parallel echo :::: - def-file
echo
echo -e "parallel echo ::: A B C :::: def-file\n"
parallel echo ::: A B C :::: def-file
echo
echo -e "parallel --link echo ::: A B C ::: D E F\n"
parallel --link echo ::: A B C ::: D E F
echo
echo -e "parallel --link echo ::: A B C D E ::: F G\n"
parallel --link echo ::: A B C D E ::: F G
echo
echo -e "parallel echo :::: abc-file :::+ G H I :::: def-file\n"
parallel echo :::: abc-file :::+ G H I :::: def-file
echo
echo -e "parallel echo :::: abc-file ::: G H I ::::+ def-file\n"
parallel echo :::: abc-file ::: G H I ::::+ def-file
echo
echo -e "parallel echo ::: A B C D E :::+ F G\n"
parallel echo ::: A B C D E :::+ F G
echo
echo -e "parallel --arg-sep ,, echo ,, A B C :::: def-file\n"
parallel --arg-sep ,, echo ,, A B C :::: def-file
echo
echo -e "parallel --arg-file-sep // echo ::: A B C // def-file\n"
parallel --arg-file-sep // echo ::: A B C // def-file
echo
echo -e "parallel -d _ echo :::: abc_-file\n"
parallel -d _ echo :::: abc_-file
echo
echo -e "parallel -d '\0' echo :::: abc0-file\n"
parallel -d '\0' echo :::: abc0-file
echo
echo -e "parallel -E stop echo ::: A B stop C D\n"
parallel -E stop echo ::: A B stop C D
echo
echo -e "(echo 1; echo; echo 2) | parallel --no-run-if-empty echo\n"
(echo 1; echo; echo 2) | parallel --no-run-if-empty echo
echo
