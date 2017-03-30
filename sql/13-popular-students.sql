SELECT name, grade FROM student
  JOIN (SELECT * FROM
      (SELECT likee_id, COUNT(likee_id) FROM student_like GROUP BY likee_id) like_count
    WHERE like_count.count >1) multiple_likes
  ON student.id = multiple_likes.likee_id;
