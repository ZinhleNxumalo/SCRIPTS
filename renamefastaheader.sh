for filename in *.faa; do sed '/^>/ s/ .*//' $filename;
done

#for filename in *.fasta; do    sed '/^>/ s/ .*//' $filename; done


#for i in *.fasta; do mafft  —-auto  --maxiterate 1000 --thread 20 $i > ${i%.fasta}.aligned.fasta; done
# for f in *.faa ; do sed -i "s/>/>"${f/.faa/}" /" ${f} ; done rename header
