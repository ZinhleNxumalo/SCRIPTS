#complete_busco_ids.sh

for file in $(find . -name "full_table_.tsv"); do
grep -v "^#" ${file} | awk '$2=="Complete" {print $1}' >> complete_busco_ids.txt;
done

