select 		name 
from 		student.student_like
join 		student.student
on 			student.student.id = student.student_like.likee_id
group by 	name 
having 		count(likee_id) >= 2;