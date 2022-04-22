#!bin/bash
#fasta files

for i in *.fasta; do mafft  —-auto  --maxiterate 1000 --thread 20 $i > ${i%.fasta}.aligned.fasta; done

