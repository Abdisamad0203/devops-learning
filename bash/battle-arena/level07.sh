#!/bin/bash

dir=${1:-Arena}

if [ ! -d "$dir" ]; then
echo "Folder not found"
exit 1
fi

echo "Sorting txt files in $dir by size..."

find "$dir" -type f -name "*.txt" -exec stat --format="%s %n" {} \; | sort -n | while read size file
do
echo "$file -> ${size} bytes"
done
