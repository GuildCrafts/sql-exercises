/*
Create the schema for the following table.
Table name: student_like, columns: liker_id, likee_id
liker_id is a foreign key reference to a student
likee_id is a foreign key reference to a student
write the SQL in the file sql/03-create-table-like.sql
*/

DROP TABLE IF EXISTS student_like;
CREATE TABLE student_like (
	liker_id INT,
	likee_id INT
);
