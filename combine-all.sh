#!/bin/bash

set -e
set -x

jq '{(.date): .cases}' schoolcases-2* | jq -s add > schoolcases-all.json
