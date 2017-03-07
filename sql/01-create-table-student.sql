DROP DATABASE IF EXISTS sql_exercises;
CREATE DATABASE sql_exercises;

\c sql_exercises;

CREATE TABLE student (id INTEGER PRIMARY KEY, name TEXT, grade INTEGER);
