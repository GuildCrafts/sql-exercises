\c sql-exercises;

SELECT DISTINCT student.name, student.grade
FROM school.student_like likes
  JOIN school.student student
  ON student.id = likes.likee_id
WHERE 1 < (
  SELECT COUNT(school.student_like.likee_id)
  FROM school.student_like
  WHERE school.student_like.likee_id = student.id
);
