SELECT *
FROM student_like likeList
JOIN friend
ON friend.id1 = likeList.liker_id  OR friend.id2 = likeList.likee_id
JOIN student
ON student.id = likeList.liker_id OR student.id = likeList.likee_id;
