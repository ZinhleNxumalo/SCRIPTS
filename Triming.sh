#Trimming
for file in *_aa.aligned.fasta;
do
    trimal -in $file -out ${file%%.fasta}_trim.fasta -gappyout;
done
