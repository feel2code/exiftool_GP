#!/bin/bash
i=1
while [ $i -lt 200 ] ; do
for f in `ls *"mp4($i).json"*` ; do
	echo $f
	mv "$f" "${f//.mp4($i).json/($i).mp4.json}"
	let "i+=1";
done;
done
