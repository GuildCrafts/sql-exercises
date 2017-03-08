psql sql-exercises; --allows me to switch in terminal
	create table student.friend (
		id1 INT NOT NULL, 
		id2 INT NOT NULL
		);
	\d student.friend; --allows me to see the table in terminal

	INSERT INTO student.friend values (1510, 1381);
	INSERT INTO student.friend values (1510, 1689);
	INSERT INTO student.friend values (1689, 1709);
	INSERT INTO student.friend values (1381, 1247);
	INSERT INTO student.friend values (1709, 1247);
	INSERT INTO student.friend values (1689, 1782);
	INSERT INTO student.friend values (1782, 1468);
	INSERT INTO student.friend values (1782, 1316);
	INSERT INTO student.friend values (1782, 1304);
	INSERT INTO student.friend values (1468, 1101);
	INSERT INTO student.friend values (1468, 1641);
	INSERT INTO student.friend values (1101, 1641);
	INSERT INTO student.friend values (1247, 1911);
	INSERT INTO student.friend values (1247, 1501);
	INSERT INTO student.friend values (1911, 1501);
	INSERT INTO student.friend values (1501, 1934);
	INSERT INTO student.friend values (1316, 1934);
	INSERT INTO student.friend values (1934, 1304);
	INSERT INTO student.friend values (1304, 1661);
	INSERT INTO student.friend values (1661, 1025);
	
	select * from student.friend;

	