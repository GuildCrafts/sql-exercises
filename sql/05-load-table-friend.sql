/*
05: SQL query to load the CSV file data/friends.csv for the friend table
Write the query in the file sql/05-load-table-friend.sql
*/

COPY exercises.students FROM '/Users/hellaboredguy/Documents/Projects/CoreSQL/sql-exercises/data/friends.csv' DELIMITER ',' CSV HEADER;
