SELECT first_name, grade 
FROM student
JOIN student_like
ON student.id = student_like.liker_id
WHERE (id IN (SELECT liker_id FROM student_like))

--Attempted, but not really

--09: For every pair of students who both like each other, return the name 
--and grade of both students. Include each pair only once, with the two names in alphabetical order. 
--Write the SQL in the file sql/09-mutual-likes.sql