\c sql-exercises;

SELECT
CASE
  WHEN friend1.name = 'Gabriel'
    THEN friend2.name
  WHEN friend2.name = 'Gabriel'
    THEN friend1.name
  ELSE NULL
END AS friend_with_gabriel
FROM school.friend
  JOIN school.student friend1
    ON friend1.id = school.friend.id1
  JOIN school.student friend2
    ON friend2.id = school.friend.id2
WHERE friend1.name = 'Gabriel' OR friend2.name = 'Gabriel';
