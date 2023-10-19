#!/bin/bash
i=1
while [ $i -lt 200 ] ; do
for f in `ls *"jpg($i).json"*` ; do
	echo $f
	mv "$f" "${f//.jpg($i).json/($i).jpg.json}"
	let "i+=1";
done;
done
