SELECT DISTINCT
	student1.name,
	student1.grade,
	student2.name,
	student2.grade
FROM
	student
AS
	student1
JOIN
	student_like
ON
	student1.id = student_like.liker_id
JOIN
	student
AS
	student2
ON
	student_like.likee_id = student2.id
WHERE 
	student1.id IN (
		SELECT likee_id FROM student_like
		)
ORDER BY
	student1.name;

































SELECT 
first_name, grade
FROM 
student
JOIN 
student_like
AS
a_student_who_likes_b_student
ON 
student.id = a_student_who_likes_b_student.liker_id
JOIN 
student_like
AS
b_student_who_likes_a_student
ON
student.id = a_student_who_likes_b_student.likee_id

WHERE 
(id 
IN (SELECT 
liker_id 
FROM 
student_like))