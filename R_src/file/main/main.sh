#!/usr/bin/env bash

function cmd {
infile="$1"
Rcmd.sh <<EOF
infile='$infile'
source('main.R')
EOF
}

set -v
cmd <(seq 3)
cmd input.txt

