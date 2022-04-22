#bin/bash

#fastasequences

for file in *_aa.aligned.fasta; 
do trimal -gappyout -in $file -out ${file%%.fasta}_trim.fasta;
 done 


#Phylip sequences
#for file in *_aa.aligned.phy; do trimal -gappyout -in $file -out ${file%%.phy}_trim.phy; done
