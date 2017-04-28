/*
Find the names of all students who are friends with someone named Gabriel.
Write the SQL in the file sql/07-query-friends-gabriel.sql


*/

SELECT f.name
  FROM friend
  JOIN student s ON s.id = friend.id1
  JOIN student f ON f.id = friend.id2
  	WHERE s.name = 'Gabriel';
