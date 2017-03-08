\c sql_exercises

CREATE TABLE student_like (liker_id INTEGER REFERENCES student, likee_id INTEGER REFERENCES student);
