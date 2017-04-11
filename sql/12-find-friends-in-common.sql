\c sql-exercises;

SELECT student_a.name, student_a.grade,
  student_b.name, student_b.grade,
  student_c.name, student_c.grade
FROM school.student_like likes
  JOIN school.student student_a
  ON student_a.id = likes.liker_id
  JOIN school.student student_b
  ON student_b.id = likes.likee_id

  JOIN school.friend friends_a
  ON (friends_a.id1 = student_a.id OR friends_a.id2 = student_a.id)
  JOIN school.friend friends_b
  ON (friends_b.id1 = student_b.id OR friends_b.id2 = student_b.id)

  JOIN school.student student_c
  ON (
    (student_c.id = friends_a.id1 OR student_c.id = friends_a.id2)
    AND
    (student_c.id = friends_b.id1 OR student_c.id = friends_b.id2)
  )
WHERE (
  SELECT 1
  FROM school.friend friend
  WHERE (
    friend.id1 = student_a.id AND
    friend.id2 = student_b.id)
    OR (
      friend.id2 = student_a.id AND
      friend.id1 = student_b.id)
) IS NULL;
