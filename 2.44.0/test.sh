#!/bin/bash

set -x

INPUT=./data/file.dot
OUTPUT=./data/truth1.png

echo "Files in this repository"
find . -type f

echo "Run graphviz"
singularity exec singularity-graphviz-2.44.0.sif dot -Tpng "$INPUT" -o "$OUTPUT"
file $OUTPUT

if [ -f $OUTPUT ]; then
	exit 0
else
	exit 1
fi
