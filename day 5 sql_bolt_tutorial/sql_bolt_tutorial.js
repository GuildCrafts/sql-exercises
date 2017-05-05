/*
Exercise 1 — Tasks
Find the title of each film ✓
Find the director of each film ✓
Find the title and director of each film ✓
Find the title and year of each film ✓
Find all the information about each film ✓
*/
SELECT title FROM movies;
SELECT director FROM movies;
SELECT title, director FROM movies;
SELECT title, year FROM movies;
SELECT * FROM movies;

/*
Exercise 2 — Tasks
Find the movie with a row id of 6 ✓
Find the movies released in the years between 2000 and 2010 ✓
Find the movies not released in the years between 2000 and 2010 ✓
Find the first 5 Pixar movies and their release  year ✓
*/
SELECT * FROM movies WHERE id = 6;

SELECT title, year FROM movies
WHERE year BETWEEN 2000 AND 2010;

SELECT title, year
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

SELECT title, year
FROM movies
ORDER BY year
LIMIT 5;

/*
Exercise 3 — Tasks
Find all the Toy Story movies ✓
Find all the movies directed by John Lasseter ✓
Find all the movies (and director) not directed by John Lasseter ✓
Find all the WALL-* movies ✓
*/
SELECT title FROM movies
WHERE title LIKE 'Toy Story%';

SELECT * FROM movies
WHERE director = 'John Lasseter';

SELECT title, director FROM movies
WHERE director != 'John Lasseter';

SELECT * FROM movies
WHERE title LiKE '%Wall_%';

/*
Exercise 4 — Tasks
List all directors of Pixar movies (alphabetically), without duplicates ✓
List the last four Pixar movies released (ordered from most recent to least) ✓
List the first five Pixar movies sorted alphabetically ✓
List the next five Pixar movies sorted alphabetically ✓
*/

SELECT DISTINCT director FROM movies
ORDER BY director ASC;

SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

/*
Review 1 — Tasks
List all the Canadian cities and their populations ✓
Order all the cities in the United States by their latitude from north to south ✓
List all the cities west of Chicago, ordered from west to east ✓
List the two largest cities in Mexico (by population) ✓
List the third and fourth largest cities (by population) in the United States and their population ✓
*/

SELECT city, population FROM north_american_cities
WHERE country = 'Canada';

SELECT city, latitude FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

SELECT * FROM north_american_cities
WHERE longitude < -88
ORDER BY longitude ASC;

SELECT city, population FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;

SELECT city, population FROM north_american_cities
WHERE country LIKE 'UNITED STATES'
ORDER BY population DESC
LIMIT 2 OFFSET 2;

/*
Exercise 6 — Tasks
Find the domestic and international sales for each movie ✓
Show the sales numbers for each movie that did better internationally rather than domestically ✓
List all the movies by their ratings in descending order ✓
*/

SELECT domestic_sales, international_sales FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id;

SELECT title, domestic_sales, international_sales FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

SELECT title, rating FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

/*
Exercise 7 — Tasks
Find the list of all buildings that have employees
Find the list of all buildings and their capacity
List all buildings and the distinct employee roles in each building (including empty buildings)
*/

SELECT DISTINCT building FROM employees;

SELECT * FROM buildings;

SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building;

/*
Exercise 8 — Tasks
Find the name and role of all employees who have not been assigned to a building ✓
Find the names of the buildings that hold no employees ✓
*/

SELECT * FROM employees
WHERE building IS NULL;

SELECT DISTINCT building_name
FROM buildings
LEFT JOIN employees
On buildings.building_name = employees.building
WHERE role IS NULL

/*
Exercise 9 — Tasks
List all movies and their combined sales in millions of dollars ✓
List all movies and their ratings in percent ✓
List all movies that were released on even number years ✓
*/

SELECT title, (domestic_sales + international_sales) / 1000000 AS combined_sales_millions
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;

SELECT id, title, rating * 10 AS ratings_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;

SELECT title, year FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id
WHERE YEAR % 2 =0;

/*
Exercise 10 — Tasks
Find the longest time that an employee has been at the studio ✓
For each role, find the average number of years employed by employees in that role ✓
Find the total number of employee years worked in each building ✓
*/

SELECT MAX(years_employed) FROM employees;

SELECT role, AVG(years_employed) AS avg_years
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed) AS total_years
FROM employees
GROUP BY building;

/*
Exercise 11 — Tasks
Find the number of Artists in the studio (without a HAVING clause) ✓
Find the number of Employees of each role in the studio ✓
Find the total number of years employed by all Engineers ✓
*/

SELECT role, COUNT(*) AS studio_artists
FROM employees
WHERE role = "Artist";

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

SELECT role, SUM(years_employed)
FROM employees
WHERE role = 'Engineer'

/*
Exercise 12 — Tasks
Find the number of movies each director has directed ✓
Find the total domestic and international sales that can be attributed to each director ✓
*/

SELECT director, COUNT(id) AS total_directed
FROM movies
GROUP BY director;

SELECT director, SUM(domestic_sales + international_sales) AS gross_total_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
GROUP BY director;

/*
Exercise 13 — Tasks
Add the studio's new production, Toy Story 4 to the list of movies (you can use any director) ✓
Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the  BoxOffice table. ✓
*/

INSERT INTO movies(id, title, director)
VALUES(4, 'Toy Story 4', 'Ava DuVernay')

INSERT INTO boxoffice VALUES(4, 8.7, 340000000, 270000000);


UPDATE movies
SET director = 'John Lasseter'
WHERE id = 2;

UPDATE movies
SET year = 1999
WHERE id = 3;





