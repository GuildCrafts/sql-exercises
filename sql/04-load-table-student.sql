/*
SQL query to load the CSV file data/students.csv for the student table
Write the SQL in the file sql/04-load-table-student.sql
*/
COPY student
FROM '/Users/josemoreno/Desktop/Projects/sql/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;
