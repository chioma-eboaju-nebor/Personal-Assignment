#!/bin/bash
#Path = chioma.eboaju@DESKTOP-RGNPOEM MINGW64 ~/Desktop/CDEBootcamp/Linux/GitAssignment

# Set environment variables
CSV_URL="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"
RAW_DIR="raw"
TRANSFORMED_DIR="Transformed"
GOLD_DIR="Gold"
TRANSFORMED_FILE="2023_year_finance.csv"

# Step 1: Extract - Download the CSV file and save it in the raw directory
echo "Starting ETL process..."
echo "Extracting data..."

# Create the raw directory if it doesn't exist
mkdir -p "$RAW_DIR"
echo "raw folder created"

# Extract the file name from the URL
FILE_NAME=$(basename "$CSV_URL")

# Download the CSV file
curl -o "$RAW_DIR/$FILE_NAME" "$CSV_URL"
echo "CSV file downloaded into the raw folder"

# Confirm the file was saved in the raw directory
if [ -f "$RAW_DIR/$FILE_NAME" ]; then
    echo "File successfully downloaded and saved in $RAW_DIR."
else
    echo "File download failed."
    exit 1
fi
