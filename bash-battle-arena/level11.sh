#!/bin/bash

dir="Arena"
threshold=1

usage=$(du -sm "$dir" 2>/dev/null | awk '{print $1}')

if [ -z "$usage" ]; then
echo "Directory not found"
exit 1
fi

if [ "$usage" -gt "$threshold" ]; then
echo "Usage is $usage MB, above threshold"
else
echo "Usage is $usage MB"
fi
