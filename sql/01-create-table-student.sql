\c sql-exercises;

CREATE SCHEMA IF NOT EXISTS school;

CREATE TABLE school.student (
  id INTEGER PRIMARY KEY,
  name VARCHAR (20),
  grade INTEGER
);
