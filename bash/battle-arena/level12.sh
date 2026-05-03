#!/bin/bash

file="settings.conf"

if [ ! -f "$file" ]; then
echo "Config not found"
exit 1
fi

while IFS='=' read -r key value
do
echo "$key -> $value"
done < "$file"
