#!/bin/bash

dir=${1:-Arena}
limit=${2:-5}

if [ ! -d "$dir" ]; then
echo "Directory not found"
exit 1
fi

usage=$(du -sm "$dir" | awk '{print $1}')

echo "Current usage: ${usage}MB"

if [ "$usage" -gt "$limit" ]; then
echo "ALERT: usage exceeded ${limit}MB"
else
echo "Usage is within limit"
fi
