#!/bin/sh

mkdir -p corpus
# download Dataset
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet \--save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1BecwJD8OoPJrE4cmSbXUuGE8gKqKn69T' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1BecwJD8OoPJrE4cmSbXUuGE8gKqKn69T" -O dataset.tar.gz && rm -rf /tmp/cookies.txt
tar xzvf dataset.tar.gz
rm dataset.tar.gz
mv dataset ./corpus

# download sentencepiece model
wget http://www.kecl.ntt.co.jp/icl/lirg/jparacrawl/release/1.0/spm_models/en-ja_spm.tar.gz
tar xzvf en-ja_spm.tar.gz
rm en-ja_spm.tar.gz
mv enja_spm_models ./corpus


