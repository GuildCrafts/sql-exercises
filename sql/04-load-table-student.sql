/*
04: SQL query to load the CSV file data/students.csv for the student table
Write the SQL in the file sql/04-load-table-student.sql
*/

COPY exercises.students FROM '/Users/hellaboredguy/Documents/Projects/CoreSQL/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;

