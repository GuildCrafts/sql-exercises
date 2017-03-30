SELECT a.name, a.grade, b.name, b.grade FROM student_like
	JOIN student a ON a.id = student_like.liker_id
	JOIN student b ON b.id = student_like.likee_id
	WHERE b.id NOT IN (SELECT liker_id FROM student_like) ;
