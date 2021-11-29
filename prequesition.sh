#!/bin/sh

mkdir /root/workspace
cd /root/workspace
chmod -R a+w .

apt-get update && apt-get install -y python3-dev python3-pip wget vim

# sentencepiece
apt-get update && \
    apt-get -y install git cmake build-essential pkg-config libgoogle-perftools-dev && \
    git clone https://github.com/google/sentencepiece.git && \
    cd sentencepiece && mkdir build && cd build && \
    cmake ..  && make -j $(nproc) && make install && \
    ldconfig -v

# fairseq
git clone https://github.com/pytorch/fairseq && \
    cd fairseq && \
    pip3 install --editable .

# sacrebleu
pip3 install sacrebleu

# mecab for evaluation
apt-get -y install mecab libmecab-dev mecab-ipadic-utf8

# accept Japanese input
apt-get install -y language-pack-ja-base language-pack-ja

