SELECT b.name FROM friend
JOIN student a ON a.id = friend.id1
JOIN student b ON b.id = friend.id2 WHERE a.name = 'Gabriel';
