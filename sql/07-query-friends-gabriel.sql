Find the names of all students who are friends with someone named Gabriel.
Write the SQL in the file sql/07-query-friends-gabriel.sql

SELECT student.id, friend.id
FROM student_like
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id WHERE character.name != 'Barney Stinson'
