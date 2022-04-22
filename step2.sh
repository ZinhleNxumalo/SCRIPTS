#!/bin/bash

genome_count=$1
for file in $(find . -name "full_table.tsv"); do
echo "Fetching complete BUSCO";
grep -v "^#" ${file} | awk '$2=="Complete" {print $1}' >> complete_busco_ids.txt;
echo "Done fetching complete BUSCO";
echo "Sorting results";
wait

sort complete_busco_ids.txt | uniq -c > complete_busco_ids_with_counts.txt;

wait
grep "$genome_count" complete_busco_ids_with_counts.txt > busco_in_all_genome.txt;
wait
awk '$NF > 2 {print $2}' busco_in_all_genome.txt > final_busco_ids.txt;
wait
echo "DONE"
done
