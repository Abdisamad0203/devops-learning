#!/bin/bash

# Create directory (won’t break if it already exists)
mkdir -p bash_demo

# Move into directory
cd bash_demo

# Create file
touch demo.txt

# Write text with date
echo "This file was created by a Bash script on $(date)" > demo.txt

# Display output
echo "Directory 'bash_demo' created."
echo "File 'demo.txt' created."
echo "File contents:"
cat demo.txt
