#!/bin/bash
for file in ./animation/*.glb; do
	name=${file##*/}
	base=${name%.glb}
	
	echo $base
	
	gltfpack -i $file -o ./animation_gltfpack/$name -c -tc -ac
done
