#bin/bash!

while read p
    do
    bioawk -v var="${p}" -c fastx '$name ~ var {print ">"$name"\n"$seq}' proteins_db.fasta >> proteins_outout.fasta
    done < list_ID.txt
