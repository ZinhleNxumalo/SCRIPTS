#!bin/bash

for i in *.fasta; do interproscan.sh -i $i  -cpu 32 -goterms -iprlookup -f XML, TSV, GFF3 -b ${i}; done

