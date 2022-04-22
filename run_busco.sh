#!bin/bash
#Run BUSCO

for i in *.fasta;
 do busco -i$i -m genome -l ascomycota -o ${i}_BUSCO -c 24; 
done  
