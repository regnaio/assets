#!/bin/bash

for file in ./animation/export/*.glb; do
	name=${file##*/}
	base=${name%.glb}
	
	echo $base
	
	gltfpack -i $file -o ./animation/gltfpack/$name -cc -tc -ac
done

for file in ./model/export/*.glb; do
	name=${file##*/}
	base=${name%.glb}
	
	echo $base
	
	gltfpack -i $file -o ./model/gltfpack/$name -cc -tc -ac -ke -kn -vpf
done
