for f in *.treefile; do sed -i "s/"${f/_aa.aligned.fasta.trimal.fasta.treefile/}"//g" ${f} ; done
