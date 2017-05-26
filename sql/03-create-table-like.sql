CREATE TABLE student_like(
    liker_id INTEGER REFERENCES student(id),
    likee_id INTEGER REFERENCES student(id)
);