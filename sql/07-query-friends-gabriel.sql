SELECT
  CASE
    WHEN student1.name != 'Gabriel' THEN student1.name
    WHEN student2.name != 'Gabriel' THEN student2.name
  END
FROM friend
INNER JOIN student student1
ON  student1.id = friend.id1
JOIN student student2
ON student2.id = friend.id2
WHERE student1.name = 'Gabriel' OR student2.name = 'Gabriel';
