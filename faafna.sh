
mkdir -p busco_aa
mkdir -p busco_nt
for dir in $(find . -type d -name "single_copy_busco_sequences"); do
  sppname=$(basename $(dirname $dir)|cut -f 2-3 -d "_" | sed 's/_/ /g');
  abbrv=$(echo $sppname | sed 's/\(\w\w\w\)\w*\( \|$\)/\1/g')
 for file in ${dir}/*.faa; do
    cp $file busco_aa/${abbrv}_${file}
    sed -i 's/^>/>'${abbrv}'|/g' busco_aa/${abbrv}_${file}
	cut -f 1 -d ":" busco_aa/${abbrv}_${file} | tr '[:lower:]' '[:upper:]' > busco_aa/${abbrv}_${file}.1
	mv busco_aa/${abbrv}_${file}.1 busco_aa/${abbrv}_${file}
  done

  for file in ${dir}/*.fna; do
    cp $file busco_nt/${abbrv}_${file}
    sed -i 's/^>/>'${abbrv}'|/g' busco_nt/${abbrv}_${file}
	cut -f 1 -d ":" busco_nt/${abbrv}_${file} | tr '[:lower:]' '[:upper:]' > busco_nt/${abbrv}_${file}.1
	mv busco_nt/${abbrv}_${file}.1 busco_nt/${abbrv}_${file}  done
done
done

