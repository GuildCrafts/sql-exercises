CREATE TABLE student_like (
    liker_id INT REFERENCES student(id),
    likee_id INT REFERENCES student(id)
);
