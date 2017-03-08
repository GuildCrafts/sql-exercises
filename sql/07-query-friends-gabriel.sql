\c sql_exercises

SELECT b.name AS buddy
FROM friends
JOIN student a
ON a.id = friends.id1
JOIN student b
ON b.id = friends.id2
WHERE a.name = 'Gabriel';
