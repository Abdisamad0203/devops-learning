#!/bin/bash

# Ask user for source directory
echo "Enter source directory:"
read source

# Check if directory exists
if [ ! -d "$source" ]; then
    echo "Directory does not exist."
    exit 1
fi

# Create timestamp
timestamp=$(date +"%Y-%m-%d_%H-%M")

# Create backup directory
backup_dir="backup_$timestamp"
mkdir "$backup_dir"

echo "Backup directory created: $backup_dir"
echo "Copying .txt files..."

# Copy .txt files
cp "$source"/*.txt "$backup_dir" 2>/dev/null

# Count files copied
count=$(ls "$backup_dir" | wc -l)

echo "Backup complete! Files backed up: $count"
