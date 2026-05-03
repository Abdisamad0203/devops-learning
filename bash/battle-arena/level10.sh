#!/bin/bash

mkdir -p Arena_Boss

for i in {1..5}
do
file="Arena_Boss/file$i.txt"
lines=$((RANDOM % 11 + 10))

for j in $(seq 1 $lines)
do
echo "line $j" >> "$file"
done
done

echo "Sorted files:"
find Arena_Boss -type f -exec ls -lh {} + | sort -k 5,5 -h

mkdir -p Victory_Archive

for file in Arena_Boss/*.txt
do
if grep -q "Victory" "$file"; then
mv "$file" Victory_Archive/
fi
done
