#!/usr/bin/env bash
folder=$1
xtiles=$2
ytiles=$3

for filename in $folder/*.tif; do
    if echo $filename | grep -Eq '[ns][0-9][0-9]_[ew][0-9][0-9][0-9]_[0-9a-zA-Z]*_v[0-9].tif'; then
        CMD="./create-tiles.sh $filename $xtiles $ytiles"
        `$CMD`
    fi
done
