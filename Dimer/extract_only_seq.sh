#!/bin/bash

# This is a script in order to extract the sequence numbers of the residue pairs

workdir=$(cd $(dirname $0); pwd)
mkdir ${workdir}/data_only_seq

for i in {1..5000}
do
    name="1B6C_complex.${i}.pdb_X_A_interface.txt"
    awk '{print $2,$7}' ${workdir}/shuju/${name} > ${workdir}/data_only_seq/${name}
done
