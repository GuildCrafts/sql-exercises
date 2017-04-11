\c sql-exercises;

COPY school.student_like FROM
'/Users/josechavezdominguez/LearnersGuild/Week3/sql-exercises/data/likes.csv'
DELIMITER ',' CSV HEADER;
