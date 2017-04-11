\c sql-exercises;

CREATE SCHEMA IF NOT EXISTS school;

CREATE TABLE school.friend (
  id1 INTEGER REFERENCES school.student(id),
  id2 INTEGER REFERENCES school.student(id)
);
