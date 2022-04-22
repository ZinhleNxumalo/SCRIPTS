sort complete_busco_ids.txt |uniq -c > complete_busco_ids_with_counts.txt
awk '$NF > 2 {print $1}' complete_busco_ids_with_counts.txt > final_busco_ids.txt
