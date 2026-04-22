#!/bin/bash

directory="Arena"
search_term="Error"

if [ ! -d "$directory" ]; then
echo "Directory does not exist"
exit 1
fi

grep -l "$search_term" "$directory"/*.log 2>/dev/null
