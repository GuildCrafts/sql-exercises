/*
09: For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
Write the SQL in the file sql/09-mutual-likes.sql
*/
SELECT name, id_result FROM students
JOIN
(SELECT liker_id AS id_result FROM (
SELECT  a.liker_id  FROM students
JOIN student_like a
ON id = a.liker_id
JOIN student_like b
ON students.id = b.likee_id
) AS test1
INTERSECT
SELECT likee_id AS id_result FROM (
SELECT  a.likee_id FROM exercises.students
JOIN student_like a
ON students.id = a.liker_id
JOIN student_like b
ON students.id = b.likee_id
) AS test1) test98
ON students.id = test98.id_result;
