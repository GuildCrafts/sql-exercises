CREATE TABLE student_like (
  liker_id INT REFERENCES student(ID),
  likee_id INT REFERENCES student(ID)
);
