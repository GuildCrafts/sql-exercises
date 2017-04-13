SELECT name, grade FROM student
	WHERE id NOT IN
		(SELECT liker_id FROM student_like)
	AND id NOT IN
		(SELECT likee_id FROM student_like)
	ORDER BY grade ASC, name ASC;
