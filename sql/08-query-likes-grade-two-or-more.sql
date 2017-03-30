SELECT a.name liker_name, a.grade liker_grade, b.name likee_name, b.grade likee_grade
	FROM student_like
	JOIN student a ON a.id = student_like.liker_id
	JOIN student b ON b.id = student_like.likee_id
	WHERE (a.grade - b.grade) >= 2;
