SELECT 	name 
FROM 	student.student
JOIN 	student.friend 
ON 		student.student.id = student.friend.id1
WHERE 	id2 = 1911 or id2 = 1689;
