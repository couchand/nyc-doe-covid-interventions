#!/bin/bash

set -e
set -x

PREV=$(git branch --show-current)

cp copy-commit-date.sh copy-commit-date-gitproof.sh

git checkout main
git log --grep='^School cases:' --pretty='%H %cs' | xargs -IXXX ./copy-commit-date-gitproof.sh XXX
git checkout $PREV

rm copy-commit-date-gitproof.sh
