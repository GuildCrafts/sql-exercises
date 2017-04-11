\c sql-exercises;

SELECT  student1.name, student1.grade, student2.name, student2.grade
FROM school.student_like
  JOIN school.student student1
    ON student1.id = school.student_like.liker_id
  JOIN school.student student2
    ON student2.id = school.student_like.likee_id
WHERE student1.id = (
  SELECT school.student_like.likee_id
  FROM school.student_like
  WHERE school.student_like.liker_id = student2.id)
  AND student1.name < student2.name;
