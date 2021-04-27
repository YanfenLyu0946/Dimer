#!/bin/bash
dir=$(cd $(dirname $0);pwd)

awk '{print $2,$7}' ${dir}/shuju/1B6C.txt > ${dir}/shuju/1B6C1.txt
bash classify_by_fluency.sh
bash extract_fre.sh
nohup matlab <main1.m> 2.out &

