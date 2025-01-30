#!/bin/bash

# Define source directories and corresponding destination directories
declare -A DIRS=(
    ["figures"]="_build/html/figures"
    ["pdfs"]="_build/html/pdfs"
    ["media"]="_build/html/media"
    ["act1/app"]="_build/html/act1/app"
    ["data"]="_build/html/data"
    ["testbin"]="_build/html/testbin"
    ["testbin_dec2024"]="_build/html/testbin_dec2024"
    ["nis"]="_build/html/nis"
)

# Iterate over defined directories, create them dynamically, and copy files if they exist
for src in "${!DIRS[@]}"; do
    dest="${DIRS[$src]}"
    
    # Create destination directory if it doesn't exist
    mkdir -p "$dest"

    # Check if source directory exists and is non-empty before copying
    if [ -d "$src" ] && [ "$(ls -A "$src" 2>/dev/null)" ]; then
        cp -r "$src"/* "$dest/"
    fi
done

# Older version of the script

# mkdir -p _build/html/pdfs _build/html/figures _build/html/media _build/html/data _build/html/testbin _build/html/testbin_dec2024 _build/html/nis
# cp -r figures/* _build/html/figures/
# cp -r pdfs/* _build/html/pdfs/
# cp -r media/* _build/html/media/
# cp -r act1/app/* _build/html/act1/app
# cp -r data/* _build/html/data
# cp -r testbin/* _build/html/testbin
# cp -r testbin_dec2024/* _build/html/testbin_dec2024
# cp -r nis/* _build/html/nis



