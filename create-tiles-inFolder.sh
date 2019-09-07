#!/usr/bin/env bash
folder=$1
xtiles=$2
ytiles=$3

for filename in $folder/*.tif; do
    CMD="./create-tiles.sh $filename $xtiles $ytiles"
    `$CMD`
done
