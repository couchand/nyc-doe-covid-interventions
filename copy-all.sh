#!/bin/bash

set -e
set -x

PREV=$(git branch --show-current)

git checkout main
git log --grep='^School cases:' --pretty='%H %cs' | xargs -IXXX ./copy-commit-date.sh XXX
git checkout $PREV
