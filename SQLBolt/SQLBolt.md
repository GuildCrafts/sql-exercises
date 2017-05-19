# SQL Bolt 

## SQL Lesson 1: SELECT queries 101
 -  [x] Find the title of each film
```
SELECT title FROM movies;
```
 -  [x] Find the director of each film
```
SELECT director FROM movies;
```
 -  [x] Find the title and director of each film
```
SELECT title, director FROM movies;
```
 -  [x] Find the title and year of each film
```
 SELECT title, year FROM movies;
```
 -  [x] Find all the information about each film
```
SELECT * FROM movies;
```

## SQL Lesson 2: Queries with constraints (Pt. 1)
 - [x] Find the movie with a row id of 6
```
SELECT * FROM movies
WHERE id =6
;
```
 - [x] Find the movies released in the years between 2000 and 2010
```
SELECT * FROM movies
WHERE year <= 2010 AND year >= 2000
;
```
 - [x] Find the movies not released in the years between 2000 and 2010
```
SELECT * FROM movies
WHERE year > 2010 OR year < 2000
;
```
 - [x] Find the first 5 Pixar movies and their release year
```
SELECT * FROM movies
WHERE id BETWEEN 1 AND 5
;
```

## SQL Lesson 3: Queries with constraints (Pt. 2)
 - [x] Find all the Toy Story movies
```
SELECT * FROM movies
WHERE Title LIKE "Toy Story%"
;
```
 - [x] Find all the moviesdirected by John Lasseter
```
SELECT * FROM movies
WHERE Director = "John Lasseter"
;
```
 - [x] Find all the movies (and director)not direct by John Lasseter
```
SELECT * FROM movies
WHERE Director != "John Lasseter"
;
```
 - [x] Find all the Wall-* movies
```
SELECT * FROM movies
WHERE Title Like "WALL-_"
;
```

## SQL Lesson 4: Filtering and sorting Query results
 - [x] List all directors of Pixar movies (alphabetically), without duplicates
```
SELECT DISTINCT Director FROM movies
ORDER BY Director DESC
;
```
 - [x] List the last four Pixar movies released (ordered from most recent to least)
```
SELECT * FROM movies
ORDER BY Year DESC
LIMIT 4
;
```
 - [x] List the first five Pixar movies sorted alphabetically
```
SELECT * FROM movies
ORDER BY Title ASC
LIMIT 5
;
```
 - [x] List the next five Pixar movies sorted alphabetically
```
SELECT * FROM movies
ORDER BY Title ASC
LIMIT 5 OFFSET 5
;
```

## SQL Review: Simple SELECT Queries
- [x] List all the Canadian cities and their populations
```
SELECT * FROM north_american_cities
WHERE Country = "Canada"
;
```
- [x] Order all the cities in the United States by their latitude from north to south
```
SELECT * FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC
;
```
- [x] List all the cities west of Chicago, ordered from west to east
```
SELECT FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC
;
```
- [x] List the two largest cities in Mexico (by population)
```
SELECT * FROM North_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
LIMIT 2
;
```
- [x] List the third and fourth largest cities (by population) in the United States and their population
```
SELECT * FROM North_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
LIMIT 2 OFFSET 2
;
```

## SQL Lesson 6: Multi-table queries with JOINs
 - [x] Find the domestic and international sales for each movie
```
SELECT movies.title, boxoffice.domestic_sales, boxoffice.international_sales FROM movies
JOIN Boxoffice
ON movies.id = boxoffice.movie_id
;
```
 - [x] Show the sales numbers for each movie that did better internationally rather than domestically
```
SELECT movies.title, boxoffice.domestic_sales, boxoffice.international_sales FROM movies
JOIN Boxoffice
ON movies.id = boxoffice.movie_id
WHERE  boxoffice.International_sales > boxoffice.domestic_sales
;
```
 - [x] List all the movies by their ratings in descending order
```
SELECT movies.title, boxoffice.rating FROM movies
JOIN Boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY rating DESC
;
```

## SQL Lesson 7: OUTER JOINs
 - [x] Find the list of all buildings that have employees
```
SELECT DISTINCT building FROM employees
;
```
note: seriously....
 - [x] Find the list of all buildings and their capacity
```
SELECT * FROM buildings
;
```
note: bruh....
 - [x] List all buildings and the distinct employee roles in each building (including empty buildings)

```
SELECT DISTINCT building_name, role FROM buildings 
LEFT JOIN employees
ON building_name = building
;
```

## SQL Lesson 8: AShort note on NULLs
-[x] Find the name and role of all employees who have not been assigned to a building
```
SELECT name, role FROM employees
WHERE building IS NULL
;
```
-[x] Find the names of the buildings that hold no employees
```
SELECT DISTINCT building_name FROM buildings 
LEFT JOIN employees
ON building_name = building
WHERE role IS NULL
;
```

## SQL Lesson 9: Queries with expressions
-[x] List all movies and their combined sales in millions of dollars
```
SELECT title, (domestic_sales + international_sales) / 1000000 AS
gross_sales_millionsFROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
;
```
-[x] List all movies and their ratings in percent
```
SELECT title, rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
;
```
-[x] List all movies that were released on even number years
```
SELECT title, year
FROM movies
WHERE year % 2 = 0
;
```
## SQL Lesson 10: Queries with aggregates (Pt. 1)
-[x] Find the longest time that an employee has been at the studio
```
SELECT * FROM employees
ORDER BY years_employed DESC
LIMIT 1
;
```
-[x] For each role, find the average number of years employed by employees in that role
```
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role
;
```
-[x] Find the total number of employee years worked in each building
```
SELECT building, SUM(years_employed) as Average_years_employed
FROM employees
GROUP BY building
;
```

## SQL Lesson 11: Queries with aggregates (Pt. 2)
-[x] Find the number of Artists in the studio (without a HAVING clause)
```
SELECT role, COUNT(*) as artist_count
FROM employees
WHERE role = "Artist";
```
-[x] Find the number of Employees of each role in the studio
```
SELECT role, COUNT(*)
FROM employees
GROUP BY role
;
```
-[x] Find the total number of years employed by all Engineers
```
SELECT role, SUM(years_employed)
FROM employees
WHERE role = "Engineer"
```

## SQL Lesson 12: Order of execution of a Query
-[x] Find the number of movies each director has directed 
```
SELECT director, COUNT(Director) FROM movies
GROUP BY DIRECTOR
;
```
-[x] Find the total domestic and international sales that can be attributed to each director

```
SELECT director, SUM(domestic_sales + international_sales) as sum_all_movies
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
GROUP BY director
;
```

## SQL Lesson 13: Inserting rows
-[x] Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
```
INSERT INTO boxoffice VALUES (4, "Toy Story 4", "John Lasseter", 2008, 10000000);
```
-[x] Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the  BoxOffice table.
```
INSERT INTO boxoffice VALUES (4, 8.7, 340000000, 27000000);
```

## SQL Lesson 14: Updating rows
-[x] The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
```
UPDATE movies
SET Director = "John Lasseter"
WHERE id = 2
;
```
-[x] The year that Toy Story 2 was released is incorrect, it was actually released in 1999
```
UPDATE movies
SET Year = 1999
WHERE id = 3
;
```
-[x] Both the title and directory for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
```
UPDATE movies
SET title = "Toy Story 3"
director = "Lee Unkrich"
WHERE id = 11
;
```

## SQL Lesson 15: Deleting rows
-[x] This database is getting too big, lets remove all movies that were released before 2005.
```
DELETE FROM movies
WHERE Year < 2005
;
```
-[x] Andrew Stanton has also left the studio, so please remove all movies directed by him.
```
DELETE FROM movies
WHERE director = "Andrew Stanton"
;
```

## SQL Lesson 16: Creating tables
-[x] Create a new table named Database with the following columns:
		– Name A string (text) describing the name of the database
		– Version A number (floating point) of the latest version of this database
		– Download_count An integer count of the number of times this database was downloaded
This table has no constraints. 
```
CREATE TABLE Database (
		name TEXT,
		version INTEGER,
		download_count INTEGER
);
```
