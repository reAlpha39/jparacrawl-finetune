#!/bin/sh

# split the corpus into subwords
mkdir -p ./corpus/spm
for L in en ja; do
    for F in ./corpus/dataset/*.$L; do
        B=`basename $F`
        spm_encode --model=./corpus/enja_spm_models/spm.$L.nopretok.model --output_format=piece < $F > ./corpus/spm/$B
    done
done
