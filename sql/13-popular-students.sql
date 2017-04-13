SELECT DISTINCT likedStudents.name, likedStudents.grade
FROM student_like likeList
JOIN student likedStudents
ON likeList.likee_id = likedStudents.id
WHERE likeList.likee_id = (SELECT likeList.likee_id
							FROM student_like
							HAVING COUNT(likee_id) > 1);
