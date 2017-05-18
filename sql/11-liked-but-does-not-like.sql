/*
11: For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the liker_id column of the like table), return A and B's names and grades.
Write the SQL in the file sql/11-liked-but-does-not-like.sql
*/

SELECT a.name AS liker_name, a.grade AS liker_grade, b.name AS likee_name, b.grade AS likee_grade
FROM exercises.student_like
JOIN exercises.students a
ON student_like.liker_id =a.id
JOIN exercises.students b
ON student_like.likee_id =b.id
WHERE b.id NOT IN (SELECT liker_id FROM exercises.student_like);
