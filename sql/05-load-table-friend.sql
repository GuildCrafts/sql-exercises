\c sql_exercises

COPY friends
FROM '/Users/adambeshir/Documents/LG_Projects/sql-exercises/data/friends.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM friends;
