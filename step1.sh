#!/bin/bash

mkdir busco_single

for subdir in *;
do sed -i 's/>.*/>'$subdir'/g' $subdir/run*/busco*/single*/*;
wait;
mkdir busco_single/$subdir;
cp -r $subdir/run*/busco*/single* busco_single/$subdir/single_copy_busco_sequences;
done
 
