SELECT theLiker.name AS Liker, theLiker.grade, theLikee.name AS Likebacknull, theLikee.grade
FROM student_like likeList
JOIN student theLiker
ON theLiker.id = likeList.liker_id
JOIN student theLikee
ON theLikee.id = likeList.likee_id
WHERE likelist.likee_id NOT IN (SELECT liker_id FROM student_like);
