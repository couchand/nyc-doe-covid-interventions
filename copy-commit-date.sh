#!/bin/bash

set -e
set -x

HASH=$(echo $1 | cut -d' ' -f1)
DATE=$(echo $1 | cut -d' ' -f2)
OUT=schoolcases-$DATE.json


git checkout $HASH
echo "{\"date\":\"$DATE\",\"cases\":" > $OUT
cat schoolcases.json >> $OUT
echo "}" >> $OUT
