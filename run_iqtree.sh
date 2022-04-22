x#!/bin/bash

#for f in *_aa.aligned.fasta; do trimal -in ${f} -out ${f%%}.trimal.fasta -automated1 ; done
#wait
for f in *trimal.fasta; do iqtree2 -s ${f} -bb 1000 -nt 4 ; done
