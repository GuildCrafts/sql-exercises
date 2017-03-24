SELECT name from students
  WHERE id IN (
    SELECT id1 FROM friends WHERE id2 IN
      (SELECT id FROM students WHERE name = 'Gabriel')
  )
  OR id IN (
    SELECT id2 FROM friends WHERE id1 IN
      (SELECT id FROM students WHERE name = 'Gabriel')
  );

--This was Rai's version

-- SELECT name FROM students
-- 	JOIN friends ON students.id = friends.id2 OR students.id = friends.id1
-- 	WHERE (
-- 		friends.id1 IN ( SELECT id FROM students WHERE name = 'Gabriel' )
-- 		OR friends.id2 IN ( SELECT id FROM students WHERE name = 'Gabriel' )
-- 	)
-- 	AND name != 'Gabriel';

-- This was my original version, which ends up having to exclude Gabriels, which is extra work and is a problem for Gabriel-Gabriel friendships
