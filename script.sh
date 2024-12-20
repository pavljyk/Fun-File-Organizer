#!/bin/bash

# Fun File Organizer
# Organize files in a folder by their extensions into categorized subfolders.

# Function to print a welcome message
function print_welcome() {
    echo "======================================"
    echo "       Welcome to Fun File Organizer!"
    echo "======================================"
    echo "This script organizes your files into folders by type."
}

# Function to create a folder if it doesn't exist
function create_folder() {
    local folder_name=$1
    if [ ! -d "$folder_name" ]; then
        mkdir -p "$folder_name"
        echo "Created folder: $folder_name"
    fi
}

# Function to move files to the appropriate folder
function move_files() {
    local ext=$1
    local folder=$2
    files=(*."$ext")
    if ls *."$ext" 1> /dev/null 2>&1; then
        for file in "${files[@]}"; do
            mv "$file" "$folder"
            echo "Moved: $file -> $folder"
        done
    fi
}

# Main script starts here
print_welcome

# Ask the user for the directory to organize
read -p "Enter the directory path to organize (or press Enter for current directory): " target_dir
target_dir=${target_dir:-$(pwd)}

# Navigate to the target directory
cd "$target_dir" || { echo "Directory not found! Exiting."; exit 1; }

echo "Organizing files in: $target_dir"

# Define file categories and extensions
declare -A categories
categories=( 
    ["Documents"]="doc docx pdf txt"
    ["Images"]="jpg png gif jpeg bmp"
    ["Music"]="mp3 wav flac"
    ["Videos"]="mp4 mkv avi"
    ["Archives"]="zip rar tar.gz 7z"
    ["Scripts"]="sh py js"
)

# Organize files into categories
for category in "${!categories[@]}"; do
    create_folder "$category"
    for ext in ${categories[$category]}; do
        move_files "$ext" "$category"
    done
done

# Move uncategorized files to "Others"
create_folder "Others"
for file in *; do
    if [ -f "$file" ]; then
        mv "$file" "Others/"
        echo "Moved: $file -> Others/"
    fi
done

echo "======================================"
echo "      Organization complete! Enjoy!"
echo "======================================"
