SELECT c.name AS liker, d.name AS likee
    FROM student_like a
    JOIN student_like b
    ON a.likee_id = b.liker_id
    JOIN student c
    ON c.id = a.liker_id
    JOIN student d
    ON d.id = b.liker_id
WHERE a.liker_id = b.likee_id AND c.name < d.name
    ORDER BY c.name;
