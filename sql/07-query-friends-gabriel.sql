SELECT 	name 
FROM 	student.student
JOIN 	student.friend 
ON 		student.student.id = student.friend.id1
WHERE 	id2 = 1911 OR id2 = 1689;


--Alternative

select 
student2.name
from 
student
join
friend
on
student.id=friend.id1
join
student
as
student2
on 
student2.id = friend.id2
where
student.name='Gabriel's

--alternative 2

select 
s2.name 
from 
friend 
join 
student 
as 
s1.id = friend.id1 
join 
student 
as
s2
on 
s2.id=friend.id2
where
s1.name='Gabriel'

