#!/bin/bash
#Path = chioma.eboaju@DESKTOP-RGNPOEM MINGW64 ~/Desktop/CDEBootcamp/Linux/GitAssignment

# Set environment variables
CSV_URL="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"
RAW_DIR="raw"
TRANSFORMED_DIR="Transformed"
GOLD_DIR="Gold"
TRANSFORMED_FILE="2023_year_finance.csv"

# Step 3: Load - Move the transformed file to the Gold directory
echo "Loading data..."

# Create the Gold directory if it doesn't exist
mkdir -p "$GOLD_DIR"
echo "Gold folder created"

# Move the transformed file to the Gold directory
mv "$TRANSFORMED_DIR/$TRANSFORMED_FILE" "$GOLD_DIR/"
echo "file named 2023_year_finance.csv saved in the Transformed folder is now moved to Gold folder"

# Confirm the file was moved to the Gold directory
if [ -f "$GOLD_DIR/$TRANSFORMED_FILE" ]; then
    echo "Data successfully loaded into $GOLD_DIR."
else
    echo "Data loading failed."
    exit 1
fi

echo "ETL process completed successfully."
