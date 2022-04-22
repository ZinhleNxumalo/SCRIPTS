
mkdir -p busco_aa
mkdir -p busco_nt
for dir in $(find . -type d -name "single_copy_busco_sequences"); do
  sppname=$(dirname $dir);
  abbrv=$(echo $sppname)
  for file in ${dir}/*.faa; do
    cp $file busco_aa/${abbrv}_${file} done
  for file in ${dir}/*.fna; do
    cp $file busco_nt/${abbrv}_${file} done
done
done
