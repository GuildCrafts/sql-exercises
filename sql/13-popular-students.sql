SELECT name, grade FROM students
  JOIN (SELECT * FROM
      (SELECT likee_id, COUNT(likee_id) FROM students_like GROUP BY likee_id) like_count
    WHERE like_count.count >1) multiple_likes
  ON students.id = multiple_likes.likee_id;
