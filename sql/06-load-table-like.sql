/*
06: SQL query to load the CSV file data/likes.csv for the student_like table
Write the SQL in the file sql/06-load-table-like.sql
*/

COPY exercises.students FROM '/Users/hellaboredguy/Documents/Projects/CoreSQL/sql-exercises/data/likes.csv' DELIMITER ',' CSV HEADER;
