echo "Starting to import json into file"
for entry in `ls`; do
	echo ${entry}
	exiftool -d %s -tagsfromfile "${entry}.json" "-DateTimeOriginal<photoTakenTimetimestamp" "-CreateDate<photoTakenTimetimestamp" "${entry}" -overwrite_original
	rm ${entry}.json
done
