# SQL BASICS
## Challenge: Book list database

 [x] What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
```
CREATE TABLE favorite_books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);
```
 [x] Now, add three of your favorite books into the table.
```
CREATE TABLE favorite_books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);
INSERT INTO favorite_books VALUES ( 1, "Revelation Space", 10 );
INSERT INTO favorite_books VALUES ( 2, "Harry Potter", 8);
INSERT INTO favorite_books VALUES ( 3, "The Godfather", 7);
```

## Challenge: Box office hits database

### Select them all
 [x] This database contains an incomplete list of box office hits and their release year. In this challenge, you're going to get the results back out of the database in different ways! In this first step, just select all the movies.
```
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
SELECT * FROM movies;
```
### Filter recent movies
 [x] Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later, not before. Sort the results so that the earlier movies are
```
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
SELECT * FROM movies;
SELECT * FROM movies WHERE release_year >= 2000 ORDER BY release_year; 
```

## Challenge: TODO list database stats

### Step 1
 [x] Here's a table containing a TODO list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take
```
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES(4, "Get jiggy with it", 10);
```
### Step 2
 [x] Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.
```
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES(4, "Get jiggy with it", 10);
SELECT SUM(minutes) FROM todo_list;
```
## Project: Design a store database
 [x] Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
```
CREATE TABLE wow_chars(id INTEGER, class TEXT, spec TEXT, race TEXT, cost INTEGER);
INSERT INTO wow_chars VALUES(1, "Paladin", "Protection", "Tauren", 500);
INSERT INTO wow_chars VALUES(1, "Paladin", "Holy", "Blood-Elf", 350);
INSERT INTO wow_chars VALUES(1, "Paladin", "Retribution", "Blood-Elf", 100);
INSERT INTO wow_chars VALUES(1, "Archer", "Marksmanship", "Blood-Elf", 300);
INSERT INTO wow_chars VALUES(1, "Archer", "Beast Mastery", "Troll", 350);
INSERT INTO wow_chars VALUES(1, "Paladin", "Protection", "Blood-Elf", 400);
INSERT INTO wow_chars VALUES(1, "Rogue", "Subtlety", "Goblin", 350);
INSERT INTO wow_chars VALUES(1, "Priest", "Holy", "Undead", 500);
INSERT INTO wow_chars VALUES(1, "Priest", "Holy", "Tauren", 400);
INSERT INTO wow_chars VALUES(1, "Monk", "Brew Master", "Pandaren", 350);
INSERT INTO wow_chars VALUES(1, "Shaman", "Elemental", "Pandaren", 400);
INSERT INTO wow_chars VALUES(1, "Archer", "Survival", "Blood-Elf", 350);
INSERT INTO wow_chars VALUES(1, "Druid", "Feral", "Orc", 200);
INSERT INTO wow_chars VALUES(1, "Warrior", "Arms", "Blood-Elf", 200);
INSERT INTO wow_chars VALUES(1, "Deathknight", "Frost", "Goblin", 200);
SELECT class, cost FROM wow_chars ORDER BY cost;
```