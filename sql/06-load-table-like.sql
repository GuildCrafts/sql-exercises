/*
SQL query to load the CSV file data/likes.csv for the student_like table
Write the SQL in the file sql/06-load-table-like.sql
*/
COPY student_like
FROM '/Users/josemoreno/Desktop/Projects/sql/sql-exercises/data/likes.csv' DELIMITER ',' CSV HEADER;
