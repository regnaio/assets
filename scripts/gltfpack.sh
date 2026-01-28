#!/bin/bash

for file in ./animation/*.glb; do
	name=${file##*/}
	base=${name%.glb}
	
	echo $base
	
	gltfpack -i $file -o ./animation_gltfpack/$name -cc -tc -ac
done

for file in ./weapon/*.glb; do
	name=${file##*/}
	base=${name%.glb}
	
	echo $base
	
	gltfpack -i $file -o ./weapon_gltfpack/$name -cc -tc -ac -ke -kn -vpf
done
