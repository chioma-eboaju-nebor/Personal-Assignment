$ #!/bin/bash

# Environment variables for source and destination directories
SOURCE_DIR="C:\Users\chioma.eboaju\Desktop\CDEBootcamp\Linux\GitAssignment\json_and_CSV_downloaded_files"
DEST_DIR="json_and_CSV"

# Check if the destination directory exists; if not, create it
if [ ! -d "$DEST_DIR" ]; then
  echo "Destination directory doesn't exist. Creating $DEST_DIR..."
  mkdir "$DEST_DIR"
fi

# Move all CSV and JSON files from the source directory to the destination directory
echo "Moving CSV and JSON files from $SOURCE_DIR to $DEST_DIR..."

# Find and move CSV files
for file in "$SOURCE_DIR"/*.csv; do
  if [ -e "$file" ]; then
    echo "Moving $file to $DEST_DIR"
    mv "$file" "$DEST_DIR"
  else
    echo "No CSV files found in $SOURCE_DIR."
  fi
done

# Find and move JSON files
for file in "$SOURCE_DIR"/*.json; do
  if [ -e "$file" ]; then
    echo "Moving $file to $DEST_DIR"
    mv "$file" "$DEST_DIR"
  else
    echo "No JSON files found in $SOURCE_DIR."
  fi
