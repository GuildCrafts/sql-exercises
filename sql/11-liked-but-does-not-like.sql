SELECT DISTINCT
	student_a_who_likes_student_b.name,
	student_a_who_likes_student_b.grade,
	student_b_who_likes_no_one.name,
	student_b_who_likes_no_one.grade
FROM
	student
AS
	student_a_who_likes_student_b
JOIN
	student_like
ON
	student_a_who_likes_student_b.id = student_like.liker_id
JOIN
	student
AS
	student_b_who_likes_no_one
ON
	student_like.likee_id = student_b_who_likes_no_one.id
WHERE 
	student_b_who_likes_no_one.id NOT IN (
		SELECT liker_id FROM student_like
		)
ORDER BY
	student_a_who_likes_student_b.name;