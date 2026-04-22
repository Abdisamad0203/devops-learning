#!/bin/bash

dir="Arena"

if [ ! -d "$dir" ]; then
echo "Directory does not exist"
exit 1
fi

find "$dir" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{print $5, $9}'
