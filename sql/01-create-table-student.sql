createdb sql-exercises;
psql sql-exercises; --allows me to swithc in terminal
create schema student; 
	create table student.student (
		id INT NOT NULL, first_name TEXT, grade INT
		);
	\d student.student; --allows me to see the table in terminal
INSERT INTO student.student values (1510, 'Jordan', 9);
INSERT INTO student.student values (1689, 'Gabriel', 9);
INSERT INTO student.student values (1381, 'Tiffany', 9);
INSERT INTO student.student values (1709, 'Cassandra', 9);
INSERT INTO student.student values (1101, 'Haley', 10);
INSERT INTO student.student values (1782, 'Andrew', 10);
INSERT INTO student.student values (1468, 'Kris', 10);
INSERT INTO student.student values (1641, 'Brittany', 10);
INSERT INTO student.student values (1274, 'Alexis', 11);
INSERT INTO student.student values (1316, 'Austin', 11);
INSERT INTO student.student values (1911, 'Gabriel', 11);
INSERT INTO student.student values (1501, 'Jessica', 11);
INSERT INTO student.student values (1304, 'Jordan', 12);
INSERT INTO student.student values (1025, 'John', 12);
INSERT INTO student.student values (1934, 'Kyle', 12);
INSERT INTO student.student values (1661, 'Logan', 12);
