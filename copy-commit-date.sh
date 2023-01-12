#!/bin/bash

set -e
set -x

HASH=$(echo $1 | cut -d' ' -f1)
DATE=$(echo $1 | cut -d' ' -f2)
OUT=schoolcases-$DATE


#git checkout $HASH
#echo "{\"date\":\"$DATE\",\"cases\":" > $OUT.json
#cat schoolcases.json >> $OUT.json
#echo "}" >> $OUT.json

cp csv/schoolcases.csv $OUT.csv
sed -i "s/^/\"$DATE\",/" $OUT.csv
