#!/bin/bash

src="Arena"
dest="Backups"

mkdir -p "$dest"

ts=$(date +"%Y-%m-%d_%H-%M-%S")
name="backup_$ts.tar.gz"

tar -czf "$dest/$name" "$src" 2>/dev/null

cd "$dest" || exit

ls -t | sed -e '1,5d' | while read f
do
rm -f "$f"
done
