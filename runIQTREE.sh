#!/bin/bash 

#FastaSequences
for i in *.fasta; do iqtree ${i} -m MFP -bnni -bb 1000  -nt 20; done

#Phylip sequences
#for i in *.phy; do iqtree ${i} -m MFP -bnni -bb 1000  -nt 20; done
