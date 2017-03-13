SELECT 		
	name 
FROM 		
	student.student_like
JOIN 			
	student.student
ON 			
	student.student.id = student.student_like.likee_id
GROUP BY 	
	name 
HAVING		
	count(likee_id) >= 2;