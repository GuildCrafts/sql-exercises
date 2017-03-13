SELECT DISTINCT
	student_a.name, 
	student_a.grade,
	student_b.name,  
	student_b.grade,
	student_c.name, 
	student_c.grade
FROM
	student
JOIN
	student_like
ON 
	student.id = student_like.liker_id
JOIN 
	friend
ON
	student_like.likee_id = friend.id1
JOIN
	student
AS 
	student_a
ON
	student_a.id = student_like.liker_id
JOIN
	student
AS 
	student_b
ON
	student_b.id = student_like.likee_id
JOIN
	student
AS
	student_c
ON
	student_c.id = friend.id1
ORDER BY
	student_a.first_name
LIMIT 2
