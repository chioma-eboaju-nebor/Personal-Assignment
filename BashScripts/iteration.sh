#!/bin/bash
#Path = chioma.eboaju@DESKTOP-RGNPOEM MINGW64 ~/Desktop/CDEBootcamp/Linux/GitAssignment

# Set environment variables
CSV_DIR="C:\Users\chioma.eboaju\Desktop\CDEBootcamp\Linux\GitAssignment\json_and_CSV"  
DB_NAME="posey"
TABLE_NAME="parch_posey_data"  
USER="postgres"  
HOST="localhost"

# Iterate through all CSV files in the directory and copy each into the PostgreSQL database
for file in "$CSV_DIR"/*.csv; do
  if [ -e "$file" ]; then
    echo "Copying data from $file into the PostgreSQL database ($DB_NAME)..."
     
    # Copy the data from the CSV file into the PostgreSQL table
    psql -U "$USER" -d "$DB_NAME" -h "$HOST" -c "\COPY $TABLE_NAME FROM '$file' WITH CSV HEADER;"
    
    echo "Data from $file has been copied to the PostgreSQL table."
  else
    echo "No CSV files found in $CSV_DIR."
  fi
done

# Confirmation message
echo "All CSV files have been copied to the PostgreSQL database."
