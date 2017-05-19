SELECT name FROM student WHERE ID IN (SELECT ID1 FROM friend WHERE ID2 in (SELECT ID FROM student WHERE name = "Gabriel"));
