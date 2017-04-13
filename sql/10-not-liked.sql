SELECT student.name, student.grade
FROM student
LEFT JOIN student_like
ON student.id = student_like.liker_id OR student.id = student_like.likee_id
WHERE student_like.liker_id IS NULL OR student_like.likee_id IS NULL
ORDER BY student.grade;
