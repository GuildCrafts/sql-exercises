SELECT 	name, grade
FROM 	student.student
JOIN 	student.student_like
ON 		student.student.id = student.student_like.liker_id;
 	


(select name 
from student.student 
where id = (id ))

-- I need to understand how to select using subqueries 
-- how to join better 








select name from student.student_like
join student.student
on student.student_like.liker_id = student.student.id 
and student.studnet_like.likee_id = student.student.id;

where 

liker_id, likee_id
1689, 1709
1709, 1689
1782, 1709
1911, 1247
1247, 1468
1641, 1468
1316, 1304
1501, 1934
1934, 1501
1025, 1101

id,name,grade
1510,"Jordan",9
1689,"Gabriel",9
1381,"Tiffany",9
1709,"Cassandra",9
1101,"Haley",10
1782,"Andrew",10
1468,"Kris",10
1641,"Brittany",10
1247,"Alexis",11
1316,"Austin",11
1911,"Gabriel",11
1501,"Jessica",11
1304,"Jordan",12
1025,"John",12
1934,"Kyle",12
1661,"Logan",12

select name from student.student
JOIN student.student
ON student.student.id = student.friend.id1
where id2 = 1911 or id2 = 1689;
