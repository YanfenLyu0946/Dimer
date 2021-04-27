#!/bin/bash

bash extract_only_seq.sh
bash extract_frequency.sh
nohup matlab <main.m> 1.out &
workdir=$(cd $(dirname $0);pwd)
rm -rf ${workdir}/data_only_seq

