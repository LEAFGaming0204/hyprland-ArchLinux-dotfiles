#!/bin/bash

# Set the directory containing your wallpapers
WALLPAPER_DIR=/home/mathias/Pictures/Wallpaper/

# Find all image files in the wallpaper directory
FILES=($(find "$WALLPAPER_DIR" -type f -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg"))

# Get a random index from the list of files
RANDOM_FILE="${FILES[RANDOM % ${#FILES[@]}]}"

# Set the wallpaper using Waypaper
waypaper "$RANDOM_FILE"
