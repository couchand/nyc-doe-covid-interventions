#!/bin/bash

set -e
set -x

OUT=schoolcases-all.csv

echo -n "\"Date\"," > $OUT
head -1 csv/schoolcases.csv >> $OUT
ls -1 schoolcases-20*.csv | xargs -IXXX tail -n +2 XXX >> $OUT
