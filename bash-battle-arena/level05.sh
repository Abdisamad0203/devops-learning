#!/bin/bash
mkdir -p Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

if [ -f "Battlefield/knight.txt" ]; then
mkdir -p Archive
mv Battlefield/knight.txt Archive/
fi

ls Battlefield
ls Archive 2>/dev/null
