#!/usr/bin/env bash
sem --jobs 3 --id my_id -u 'echo Start 1; sleep 5; echo 1 done' && \
  sem --jobs 3 --id my_id -u 'echo Start 2; sleep 6; echo 2 done' && \
  sem --jobs 3 --id my_id -u 'echo Start 3; sleep 7; echo 3 done' && \
  sem --jobs 3 --id my_id -u 'echo Start 4; sleep 8; echo 4 done' && \
  sem --wait --id my_id

sem --id foo -u 'echo Slow started; sleep 10; echo Slow ended' && \
  sem --id foo --semaphoretimeout 1 'echo Forced running after 1 sec' && \
  sem --id foo --semaphoretimeout -2 'echo Give up after 2 secs'
sem --id foo --wait
