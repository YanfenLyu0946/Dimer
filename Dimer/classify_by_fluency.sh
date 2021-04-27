#!/bin/bash

workdir=$(cd $(dirname $0);pwd)
mkdir ${workdir}/rerange
for i in $(seq 1 99);do
    a=$(($i%10))
    if [ $a -ne 0 ];then
        mkdir ${workdir}/rerange/0.${i}
        for j in $(cat list.txt);do
            file1=${workdir}/top_${j}/top_${j}_0.${i}.txt
	    file2=${workdir}/rerange/0.${i}/${j}.txt
	    awk '{print $1,$2}' ${file1} > ${file2}
        done
    fi
done
