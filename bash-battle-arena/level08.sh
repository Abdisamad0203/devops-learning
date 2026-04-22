#!/bin/bash

search=${1:-Error}
dir=${2:-Arena}

if [ ! -d "$dir" ]; then
echo "Folder not found"
exit 1
fi

echo "Looking for '$search' in log files..."

grep -l "$search" "$dir"/*.log 2>/dev/null
