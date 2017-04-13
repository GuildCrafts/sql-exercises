SELECT CONCAT(student1.name,', ', student2.name) AS matchingFriends
FROM student_like
JOIN student_like studentLiker
ON  student_like.likee_id = studentLiker.liker_id
JOIN student student1
ON student1.id = studentLiker.liker_id
JOIN student student2
ON student2.id = student_like.liker_id
WHERE  student_like.likee_id = studentLiker.liker_id AND studentLiker.likee_id = student_like.liker_id
		AND student1.name < student2.name;
