#!/bin/bash

dir="Arena"
term="Error"

if [ ! -d "$dir" ]; then
echo "Directory does not exist"
exit 1
fi

grep -l "$term" "$dir"/*.log 2>/dev/null
