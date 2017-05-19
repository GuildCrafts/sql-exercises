/*
10: Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
Write the SQL in the file sql/10-not-liked.sql
*/
SELECT * FROM exercises.students
	WHERE id NOT IN (SELECT liker_id From exercises.student_like)
	AND id NOT IN (SELECT likee_id From exercises.student_like)
	ORDER BY grade, name;
