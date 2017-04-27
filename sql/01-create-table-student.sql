/*Create the schema for the following table.
Table name: student, columns: id, name, grade
id is the primary-key
name is only their first name
grade is a num.
write the SQL in the file sql/01-create-table-student.sql
*/

DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id INTEGER PRIMARY KEY,
	name TEXT,
	grade INT
);
