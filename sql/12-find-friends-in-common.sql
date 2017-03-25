SELECT a.name, a.grade, b.name, b.grade, c.name, c.grade, d.name, d.grade FROM
  (SELECT liker_id, likee_id, f1.id1 as id1_a, f1.id2 as id2_a,f2.id1 as id1_b, f2.id2 as id2_b FROM (
   	SELECT * FROM students_like
 	WHERE likee_id NOT IN (
 		SELECT id2 FROM friends
 		WHERE id1 = liker_id)
 	AND likee_id NOT IN (
 		SELECT id1 FROM friends
 		WHERE id2 = liker_id))matchmaker
   JOIN friends f1
   ON matchmaker.liker_id = f1.id1
   OR matchmaker.liker_id = f1.id2
   JOIN friends f2
   ON matchmaker.likee_id = f2.id1
   OR matchmaker.likee_id = f2.id2
   WHERE f1.id1=f2.id1 OR f1.id2=f2.id1 OR f1.id1=f2.id2 OR f1.id2 = f2.id1) triples
JOIN students a ON triples.liker_id = a.id
JOIN students b ON triples.likee_id = b.id
JOIN students c ON triples.id1_a = c.id
JOIN students d ON triples.id2_a = d.id;
