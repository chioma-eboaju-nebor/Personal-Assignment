CoreDataEngineers ETL and Competitor Analysis

This repository contains scripts that perform an ETL process and answer specific business questions about Parch and Posey using SQL queries. The solutions are divided into two main sections: Bash scripts and SQL queries.

Project Overview
This project handles both the extraction, transformation, and loading (ETL) of financial data as well as an analysis of the competitive landscape in the sales of goods and services, specifically focusing on the competitor, Parch and Posey.

Directory Structure
├── Scripts/
│   ├── Bash/
│   ├── SQL/
│   ├── ETL_pipeline_diagram.png

Bash Script: ETL Process
The Bash script performs the following ETL operations:
Extract: Downloads a CSV file from a specified URL and saves it into the raw folder.
Transform: Renames the Variable_code column to variable_code and selects specific columns (year, Value, Units, variable_code). The transformed file is saved in the Transformed folder.
Load: Moves the transformed file to the Gold folder.
