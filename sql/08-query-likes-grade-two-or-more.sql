SELECT a.name, a.grade, b.name, b.grade 
    FROM student_like
    JOIN student a ON student_like.liker_id = a.id
    JOIN student b ON student_like.likee_id = b.id 
WHERE a.grade - b.grade >= 2 OR b.grade - a.grade >= 2;

-- OR

SELECT a.name, a.grade, b.name, b.grade 
    FROM student_like
    JOIN student a ON student_like.liker_id = a.id
    JOIN student b ON student_like.likee_id = b.id 
WHERE abs(a.grade) - abs(b.grade) = 2 OR abs(b.grade - a.grade) = 2;