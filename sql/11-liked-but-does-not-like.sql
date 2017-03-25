SELECT a.name, a.grade, b.name, b.grade FROM students_like
	JOIN students a ON a.id = students_like.liker_id
	JOIN students b ON b.id = students_like.likee_id
	WHERE b.id NOT IN (SELECT liker_id FROM students_like) ;
