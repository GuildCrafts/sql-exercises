createdb sql-exercises; -- only need to create data table once

psql sql-exercises; -- allows me to switch in terminal

CREATE SCHEMA student; -- only need to create schema once

CREATE TABLE student (
		
		id INT NOT NULL, 

		first_name TEXT, 

		grade INT
		
		);

\d student.student; -- allows me to see the table in terminal