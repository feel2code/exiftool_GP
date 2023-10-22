#!/bin/bash
echo "Starting to import json into file"
sleep 5
# first replace spaces in the filenames
for f in *\ *; do mv "$f" "${f// /_}"; done
# next overwrite tags from Google Photos to the extracted files
for entry in `ls`; do
	echo ${entry}
	exiftool -d %s -tagsfromfile "${entry}.json" "-DateTimeOriginal<photoTakenTimetimestamp" "-CreateDate<photoTakenTimetimestamp" "${entry}" -overwrite_original
	rm ${entry}.json
done
echo "Files processed... Ctrl+C to exit."
