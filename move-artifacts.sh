#!/bin/bash

# Moves all compiled EXE and their DDLs to respective folder in "my-release"

# USAGE:

# user$ ./move-artifacts.sh bin/Release/


fromFolder="$1"
toFolder="./my-release"

if [[ ! -d "$fromFolder" ]]; then
	echo "Source folder does not exist: $fromFolder" >&2
	exit 1
fi
if [[ ! -d "$toFolder" ]]; then
	echo "Target folder does not exist: $toFolder" >&2
	exit 1
fi

while IFS= read -r -d $'\0' file; do
	fileName="${file##*/}"
	folderPath="${file%/*}"
	platform="${folderPath##*/}"
	echo "$fileName and $platform"
	
	[[ ! -d "$toFolder/${platform}" ]] && mkdir "$toFolder/${platform}"
	cp --verbose --no-clobber "$file" "$toFolder/${platform}/${fileName}"

done < <(find "$fromFolder" -maxdepth 3 -type f \( -name 'dotnet-pe-version' -o -name 'dotnet-pe-version.dll' -o -name 'dotnet-pe-version.exe' \) -print0)

unset IFS;
	
	