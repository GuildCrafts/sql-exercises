SELECT sName, sGrade, lName, lGrade
FROM (SELECT h1.name AS sName, h1.grade sGrade, h2.name AS lName, h2.grade AS lGrade, h1.grade-h2.grade AS gradeDiff
     FROM Highschooler h1, Likes, Highschooler h2
     WHERE h1.ID=ID1 AND h2.ID=ID2)
WHERE gradeDiff>1;
