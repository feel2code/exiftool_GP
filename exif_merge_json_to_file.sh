#!/bin/bash
echo "Starting to import json into file"
sleep 5
# renames json files which were break after exporting for jpg
i=1
while [ $i -lt 200 ] ; do
for f in `ls *"jpg($i).json"*` ; do
	echo $f
	mv "$f" "${f//.jpg($i).json/($i).jpg.json}"
	let "i+=1";
done;
done
# renames json files which were break after exporting for mp4
i=1
while [ $i -lt 200 ] ; do
for f in `ls *"mp4($i).json"*` ; do
	echo $f
	mv "$f" "${f//.mp4($i).json/($i).mp4.json}"
	let "i+=1";
done;
done
# first replace spaces in the filenames
for f in *\ *; do mv "$f" "${f// /_}"; done
# next overwrite tags from Google Photos to the extracted files
for entry in `ls`; do
	echo ${entry}
	exiftool -d %s -tagsfromfile "${entry}.json" "-DateTimeOriginal<photoTakenTimetimestamp" "-CreateDate<photoTakenTimetimestamp" "${entry}" -overwrite_original
	rm ${entry}.json
done
echo "Files processed... Ctrl+C to exit."
