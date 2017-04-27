CREATE TABLE student_like (
  liker_id INT references student(ID),
  likee_id INT references student(ID)
);
