/*
For every student who likes someone 2 or more grades younger than themselves,
return that student's name and grade, and the name and grade of the student they like.
Write the SQL in the file sql/08-query-likes-grade-two-or-more.sql
*/

SELECT s.name liker_name, s.grade liker_grade, s2.name likee_name, s2.grade likee_grade
	FROM student_like
	JOIN student s ON s.id = student_like.liker_id
	JOIN student s2 ON s2.id = student_like.likee_id
	WHERE (s.grade - s2.grade) >= 2;
