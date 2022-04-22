mkdir -p busco_aa
mkdir -p busco_nt

for dir in $(find . -type d -name "single_copy_busco_sequences"); do
    abbr=$(basename $(dirname $dir))
    #for busco protein sequences
#    for file in $(basename $(dirname $dir))/single_copy_busco_sequences/*.faa; do
#        cp $file -T busco_aa/${abbr}_$(basename $file);
       # sed -i 's/^>/>'${abbr}'|/g' busco_aa/${abbr}_$(basename $file);
       # cut -f 1 -d ":" busco_aa/${abbr}_$(basename $file) | tr '[:lower:]' '[:upper:]' > busco_aa/${abbr}_$(basename $file).1;
       # cut -f 1 -d "|" busco_aa/${abbr}_$(basename $file).1 > busco_aa/${abbr}_$(basename $file).2 ;
       # mv busco_aa/${abbr}_$(basename $file).2 busco_aa/${abbr}_$(basename $file);
       # rm busco_aa/${abbr}_$(basename $file).1;
#    done
    #for busco nucleotide sequences
    for file in $(basename $(dirname $dir))/single_copy_busco_sequences/*.fna; do
        cp $file -T busco_nt/${abbr}_$(basename $file);
       sed -i 's/^>/>'${abbr}'|/g' busco_nt/${abbr}_$(basename $file);
       # cut -f 1 -d ":" busco_nt/${abbr}_$(basename $file) | tr '[:lower:]' '[:upper:]' > busco_nt/${abbr}_$(basename $file).1;
       # cut -f 1 -d "|" busco_nt/${abbr}_$(basename $file).1 > busco_nt/${abbr}_$(basename $file).2;
       # mv busco_nt/${abbr}_$(basename $file).2 busco_nt/${abbr}_$(basename $file);
       # rm busco_nt/${abbr}_$(basename $file).1;
    done
done
