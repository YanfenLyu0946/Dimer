#!/bin/bash

# This is a script in order to extract the frequency of each residue pairs and delete the repetitive lines
# ./shuju
# ./data_only_seq
# ./list.txt

# ./top
# ./top/temp_top_1.txt
# ./top/temp_frequency_1.txt
# ./top/top_1.txt

workdir=$(cd $(dirname $0);pwd)
for i in $(cat list.txt);do
    topdir=${workdir}/top_${i}
    mkdir ${topdir}
    temp_file=${topdir}/temp_top_${i}.txt
    touch ${temp_file}
    for j in $(seq 1 $i);do
        name=${workdir}/data_only_seq/1B6C_complex.${j}.pdb_X_A_interface.txt
	cat ${name}>>${temp_file}
    done
    cat ${temp_file}|sort|uniq -c > ${topdir}/temp_frequency_${i}.txt
    awk '{print $2,$3,$1}' ${topdir}/temp_frequency_${i}.txt > ${topdir}/top_${i}.txt
    rm ${topdir}/temp_frequency_${i}.txt
    rm ${topdir}/temp_top_${i}.txt
done
