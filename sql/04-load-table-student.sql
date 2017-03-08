\c sql_exercises

COPY student
FROM '/Users/adambeshir/Documents/LG_Projects/sql-exercises/data/students.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM student;
