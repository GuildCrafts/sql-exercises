-- Solution SQL for the project from the Relational Queries course ("Famous people")


/* Create table about the people and what they do here */
 CREATE TABLE person (id INTEGER PRIMARY KEY, name TEXT, year_born INTEGER, birthplace TEXT, gender TEXT);

CREATE TABLE person_Info(id INTEGER PRIMARY KEY, year_died INTEGER, occupation TEXT, still_alive TEXT, full_name TEXT);

INSERT INTO person VALUES(1, "Aaliyah", 1979, "Brooklyn, NY", "Female");
INSERT INTO person VALUES(2, "Wallace", 1857, "Bridgewter, VT", "Male");
INSERT INTO person VALUES(3, "Shirley", 1933, "New York City, NY", "Female");
INSERT INTO person VALUES(4, "Bruce", 1943, "New York City, NY", "Male");
INSERT INTO person VALUES(5, "Don", 1926, "New York City, NY", "Male");
INSERT INTO person VALUES(6, "Oleta", 1962, "Seatle, WA", "Female");
INSERT INTO person VALUES(7, "Scott", 1957, "Windham,NY", "Male");
INSERT INTO person VALUES(8, "Leona", 1973, "St. Louis, MO", "Female");

INSERT INTO person_Info VALUES(1, 2001, "Singer/Actor", "NO", "Aaliyah Dana Haughton");
INSERT INTO person_Info VALUES(2, 1921, "Docotr", "NO", "Wallace Calvin Abbot");
INSERT INTO person_Info VALUES(3, NULL, "Judge", "YES", "Shirley S. Abrahamson");
INSERT INTO person_Info VALUES(4, NULL, "Legal Scholar", "YES", "Bruce Ackerman");
INSERT INTO person_Info VALUES(5, 2005, "Actor/Comic", "NO", "Don Adams");
INSERT INTO person_Info VALUES(6, NULL, "Singer", "YES", "Oleta Adams");
INSERT INTO person_Info VALUES(7, NULL, "Cartoonist", "YES", "Scott Adams");
INSERT INTO person_Info VALUES(8, 1973, "Actor", "NO", "Leona Anderson");

SELECT  year_born, still_alive
    FROM person JOIN person_Info
    ON name = full_name;
