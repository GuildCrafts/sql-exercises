\c sql-exercises;

COPY school.student FROM
'/Users/josechavezdominguez/LearnersGuild/Week3/sql-exercises/data/students.csv'
DELIMITER ',' CSV HEADER;
