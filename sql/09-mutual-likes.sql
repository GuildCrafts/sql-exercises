/*
For every pair of students who both like each other, return the name and grade of both students.
Include each pair only once, with the two names in alphabetical order.
Write the SQL in the file sql/09-mutual-likes.sql
*/


SELECT student1.name liker_name, student1.grade liker_grade, student2.name likee_name, student2.grade likee_grade
	FROM (
		SELECT like1.liker_id, like1.likee_id
			FROM student_like like1
			JOIN student_like like2
			ON like1.liker_id = like2.likee_id AND like2.liker_id = like1.likee_id
		) mutual
	JOIN student student1 ON student1.id = mutual.liker_id
	JOIN student student2 ON student2.id = mutual.likee_id
	WHERE student1.name < student2.name
	ORDER BY student1.name ASC;
