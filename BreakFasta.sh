#This code breaks separates a big fasta files that has frequencies into individual files.

while read line
do
    if [[ ${line:0:1} == '>' ]]
    then
        outfile=${line#>}.fa
        echo $line > "$outfile"
    else
        echo $line >> "$outfile"
    fi
done < Ascomycota_tps_genes_selected.fasta
