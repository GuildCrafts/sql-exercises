SELECT 
	student_who_likes.name,
	student_who_likes.grade,
	student_who_is_liked.named
	student_who_is_liked.grade
FROM
	student
AS
	student_who_likes
JOIN
	student_like
ON
	student_who_likes.id = student_like.liker_id
JOIN
	student
AS 
	student_who_is_liked
ON
	student_who_is_liked.id = student_like.likee_id
WHERE
	student_who_likes.grade - student_who_is_liked.grade >= 1;