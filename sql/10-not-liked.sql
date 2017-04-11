\c sql-exercises;

SELECT student.name, student.grade
FROM school.student student
WHERE student.id NOT IN (
  SELECT school.student_like.liker_id
  FROM school.student_like
  UNION
  SELECT school.student_like.likee_id
  FROM school.student_like
)
ORDER BY student.grade, student.name;
