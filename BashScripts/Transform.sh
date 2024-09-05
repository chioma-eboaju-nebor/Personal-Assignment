# Set environment variables
CSV_URL="https://example.com/path/to/your/file.csv"  # Replace with the actual URL
RAW_DIR="raw"
TRANSFORMED_DIR="Transformed"
GOLD_DIR="Gold"
TRANSFORMED_FILE="2023_year_finance.csv"

# Step 2: Transform - Rename the column and select specific columns
echo "Transforming data..."

# Create the transformed directory if it doesn't exist
mkdir -p "$TRANSFORMED_DIR"
echo "Transformed folder created"
