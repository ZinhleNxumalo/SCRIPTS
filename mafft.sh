for i in *.fasta; do mafft --maxiterate 1000 --thread 20 $i > ${i%.fasta}.aligned.fasta done
#for i in *.fasta; do mafft --maxiterate 1000 $i>${i%.fasta}.aligned.fasta done
