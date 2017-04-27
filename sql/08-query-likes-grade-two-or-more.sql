/*
For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
Write the SQL in the file sql/08-query-likes-grade-two-or-more.sql
*/

SELECT a.name liker_name, a.grade liker_grade, b.name likee_name, b.grade likee_grade
	FROM student_like
	JOIN student a ON a.id = student_like.liker_id
	JOIN student b ON b.id = student_like.likee_id
	WHERE (a.grade - b.grade) >= 2;
