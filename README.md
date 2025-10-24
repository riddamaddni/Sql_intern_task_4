Note; Refer to the database schema of the first task!!!

This SQL script (Task-4.sql) is a collection of read-only queries designed to perform exploratory data analysis (EDA), data profiling, and data quality checks on a pharmacovigilance database (inferred to be pv_db).

The script is non-destructive and only reads data using SELECT statements. It does not modify, insert, or delete any data.

Key SQL Concepts Demonstrated

This script provides practical examples of the following SQL concepts:

Aggregate Functions: COUNT(), SUM(), AVG(), MIN(), MAX()

Data Grouping: GROUP BY

Group Filtering: HAVING

Row Filtering: WHERE

Unique Values: COUNT(DISTINCT ...)

Output Formatting: ROUND(), AS (aliasing)

How to Use

All queries in the .sql file are commented out using --. To run them:

Connect to your database (e.g., pv_db) using a SQL client.

Uncomment the specific query or block of queries you wish to execute.

Run the uncommented SQL statement(s).

Query Sections

The script is organized into several logical sections:

Basic Table Counts: Using COUNT(*) to find the total number of rows in each table.

Data Quality & Completeness: Comparing COUNT(*) (all rows) with COUNT(column_name) (non-null rows) to identify missing data.

Overall Aggregate Summaries: Using SUM(), AVG(), MIN(), and MAX() to get statistics for the entire dataset.

Grouped Analysis: Using GROUP BY to segment data (e.g., by Gender, REPORTER_TYPE) and apply aggregates to each segment.

Filtered Group Analysis: Using HAVING to filter the results of the grouped analysis (e.g., show only groups with COUNT(*) > 1).
