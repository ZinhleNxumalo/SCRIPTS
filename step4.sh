#!/bin/bash

while read line; do
cat ${line}.fasta >> ${line}_aa.fasta;
done<SelectedBUSCOIDs


#while read line; do
#cat ??????_${line}.faa >> ${line}_aa.fasta;
#cat ??????_${line}.fna >> ${line}_nt.fasta;
#done<SelectedBuscoIDs.txt
