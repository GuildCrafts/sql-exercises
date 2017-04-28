-- For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the liker_id column of the like table), return A and B's names and grades. 

SELECT a.name, a.grade, b.name, b.grade FROM student_like
	JOIN student a ON a.id = student_like.liker_id
	JOIN student b ON b.id = student_like.likee_id
	WHERE b.id NOT IN (SELECT liker_id FROM student_like);
