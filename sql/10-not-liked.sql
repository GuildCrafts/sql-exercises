SELECT student.name, student.grade 
	FROM student
WHERE student.id NOT IN (
	SELECT likee_id
	FROM student_like
	UNION ALL
	SELECT liker_id
	FROM student_like
	)
;