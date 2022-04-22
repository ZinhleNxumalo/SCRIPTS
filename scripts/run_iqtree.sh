#!/bin/bash

for f in *aligned.fasta; do trimal -in ${f} -out ${f/.fasta/}.trimal.fasta -automated1 ; done

for f in *trimal.fasta; do iqtree2 -s ${f} -bb 1000 -nt 4 ; done
