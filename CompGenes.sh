#Extract Complete Genes

for file in $(find . -name "full_table.tsv"); do
grep -v "^#" ${file} | awk '$230=="Complete" {print $1}' >> complete_busco_ids.txt;

done
