-- 09: For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.

SELECT a.name liker_name, a.grade liker_grade, b.name likee_name, b.grade likee_grade FROM (
  SELECT student_like
JOIN student a ON a.id = student_like.liker_id
JOIN student b ON b.id = student_like.likee_id
WHERE (a.id + b.id) = (b.id + a.id)
GROUP BY

ORDER BY a.name;