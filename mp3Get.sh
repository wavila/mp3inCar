#!/bin/bash

# ./mp3Get.sh mp3Link mp3Folder

RED='\033[1;31m'
GREEN='\033[1;32m'
PURPLE='\033[1;35m'
NC='\033[0m'

# [1] Check if folder exists, else creates it
if [ ! -d "$2" ]; then
  mkdir $2
fi

# [2] Download MP3 files from url server w/ address written in mp3Link [var: $1]
while IFS='' read -r line || [[ -n "$line" ]]; do
    if [[ "$line" == https* ]]; then
        #echo "$line"
        youtube-dl -o "$2/act.%(ext)s" --extract-audio --audio-format mp3 $line
		mv "$2/act.mp3" "$2/${NAME}"
    else
        printf "${GREEN}[+]${NC}		$line\n"
		NAME=$line
    fi
done < "$1"

# [3] Organizes inside mp3Folder [var: $2]
path="$PWD/$2"
echo " "
printf "	${PURPLE}MP3 files will be organized by folders w/ dash delimiter in next step.${NC}\n"
read -rsp $'	Press any key to continue...\n' -n1 key
#clear

DATE=$(date +'%Y-%m-%d')
echo "Written:					$DATE"
echo "------------------------------------------------------------"
for file in "$path"/*
do
  if [ -f "$file" ]; then
	artist=${file% -*}
	title=$(echo $file | cut -d'-' -f2 | cut -d'.' -f1)
	extension=${file##*.}
	dir="$artist"
	
	echo "Dir:		$dir"
	echo "Path: 		$path"
	if [ ! -d "$dir" ]; then
		mkdir "${dir#" "}"
		#printf "${RED}[+]${NC}:		"${dir#" "}"\n"	
	fi

	printf "Source:       	$file \n"
	echo " " 
	mv "$file" "${artist}/$title"
	# Set ID3 tag using a Python routine
	eyeD3 -A "NoAlbum" -a "${artist##*/}" -t "$title" "${dir#" "}"
  fi
done
		



