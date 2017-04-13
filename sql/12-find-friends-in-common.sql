SELECT a.name, a.grade, b.name, b.grade, c.name, c.grade, d.name, d.grade FROM
  (SELECT liker_id, likee_id, f1.id1 as id1_a, f1.id2 as id2_a,f2.id1 as id1_b, f2.id2 as id2_b FROM (
   	SELECT * FROM student_like
 	WHERE likee_id NOT IN (
 		SELECT id2 FROM friend
 		WHERE id1 = liker_id)
 	AND likee_id NOT IN (
 		SELECT id1 FROM friend
 		WHERE id2 = liker_id))matchmaker
   JOIN friend f1
   ON matchmaker.liker_id = f1.id1
   OR matchmaker.liker_id = f1.id2
   JOIN friend f2
   ON matchmaker.likee_id = f2.id1
   OR matchmaker.likee_id = f2.id2
   WHERE f1.id1=f2.id1 OR f1.id2=f2.id1 OR f1.id1=f2.id2 OR f1.id2 = f2.id1) triples
JOIN student a ON triples.liker_id = a.id
JOIN student b ON triples.likee_id = b.id
JOIN student c ON triples.id1_a = c.id
JOIN student d ON triples.id2_a = d.id;
