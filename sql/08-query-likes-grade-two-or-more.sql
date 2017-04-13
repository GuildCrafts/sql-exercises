SELECT studentLiker.name, studentLiker.grade, studentLikee.name, studentLikee.grade
FROM student_like
JOIN student studentLiker
ON studentLiker.id = student_like.liker_id
JOIN student studentLikee
ON studentLikee.id = student_like.likee_id
WHERE (studentLiker.grade - studentLikee.grade) >= 2;
