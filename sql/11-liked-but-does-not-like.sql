\c sql-exercises;

SELECT student_a.name, student_a.grade, student_b.name, student_b.grade
FROM school.student_like
  JOIN school.student student_a
  ON student_a.id = school.student_like.liker_id
  JOIN school.student student_b
  ON student_b.id = school.student_like.likee_id
WHERE student_b.id NOT IN (
  SELECT school.student_like.liker_id
  FROM school.student_like
);
