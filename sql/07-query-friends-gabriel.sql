SELECT a.name, b.name AS friend 
	FROM friend
	JOIN student a ON friend.id1 = a.id
	JOIN student b ON b.id = friend.id2 
WHERE a.name = 'Gabriel' OR b.name = 'Gabriel' ORDER BY a.name; 