#!/bin/bash

# Ask user for filename
echo "Enter filename to check:"
read file

# Check if file exists
if [ -e "$file" ]; then
    echo "File '$file' exists."

    # Check permissions
    if [ -r "$file" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    if [ -w "$file" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    if [ -x "$file" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi

else
    echo "File '$file' does not exist."
fi
