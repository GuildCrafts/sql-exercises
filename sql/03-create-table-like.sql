\c sql-exercises;

CREATE SCHEMA IF NOT EXISTS school;

CREATE TABLE school.student_like (
  liker_id INTEGER REFERENCES school.student(id),
  likee_id INTEGER REFERENCES school.student(id)
);
