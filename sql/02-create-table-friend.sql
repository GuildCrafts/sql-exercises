/*
Create the schema for the following table.
Table name: friend, columns: id1, id2
id1 is a foreign key reference to a student
id2 is a foreign key reference to a student
write the SQL in the file sql/02-create-table-friend.sql
*/
DROP TABLE IF EXISTS friend;
CREATE TABLE friend (
	id1 INT REFERENCES student(id),
	id2 INT REFERENCES student(id)
);
