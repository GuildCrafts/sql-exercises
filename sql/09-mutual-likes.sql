SELECT s1.name liker_name, s1.grade liker_grade, s2.name likee_name, s2.grade likee_grade
	FROM (
		SELECT a.liker_id, a.likee_id
			FROM students_like a
			JOIN students_like b
			ON a.liker_id = b.likee_id AND b.liker_id = a.likee_id
		) mutual
	JOIN students s1 ON s1.id = mutual.liker_id
	JOIN students s2 ON s2.id = mutual.likee_id
	WHERE s1.name < s2.name
	ORDER BY s1.name ASC;
