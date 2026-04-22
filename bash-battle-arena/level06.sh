#!/bin/bash

if [ -z "$1" ]; then
echo "No file provided"
exit 1
fi

if [ ! -f "$1" ]; then
echo "File not found"
exit 1
fi

line_count=$(wc -l < "$1")
echo "The file has $line_count lines"
