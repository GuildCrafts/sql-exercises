SELECT name, grade FROM students
	WHERE id NOT IN
		(SELECT liker_id FROM students_like)
	AND id NOT IN
		(SELECT likee_id FROM students_like)
	ORDER BY grade ASC, name ASC;
