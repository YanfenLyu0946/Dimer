#!/bin/bash

workdir=$(cd $(dirname $0);pwd)


for i in $(seq 1 99);do
    a=$(($i%10))
    if [ $a -ne 0 ];then
        file_temp=${workdir}/rerange/0.${i}/temp_0.${i}.txt
        touch ${file_temp}
        for j in $(cat list.txt);do
	    filename=${workdir}/rerange/0.${i}/${j}.txt
	    cat ${filename}>>${file_temp}
        done
        cat ${file_temp}|sort|uniq -c > ${workdir}/rerange/0.${i}/temp_fre_${i}.txt
        awk '{print $2,$3,$1}' ${workdir}/rerange/0.${i}/temp_fre_${i}.txt > ${workdir}/rerange/0.${i}/fre_0.${i}.txt
        rm ${workdir}/rerange/0.${i}/temp_fre_${i}.txt
        rm ${file_temp}
    fi
done



    
