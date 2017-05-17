# Relational queries in SQL
## Challenge: Bobby's Hobbies
### Step 1
[x] We've created a database of people and hobbies, and each row in hobbies is related to a row in persons via the person_id column. In this first step, insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.
<br>
<br>CREATE TABLE persons (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    name TEXT,
<br>    age INTEGER);
<br>    
<br>INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
<br>INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
<br>INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
<br>INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
<br>INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
<br>INSERT INTO persons(name, age) VALUES ("Rob C", 26);
<br>
<br>CREATE table hobbies (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person_id INTEGER,
<br>    name TEXT);
<br>    
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (6, "WoW");

### Step 2
[x] results = persons name next to their hobby
<br>CREATE TABLE persons (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    name TEXT,
<br>    age INTEGER);
<br>    
<br>INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
<br>INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
<br>INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
<br>INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
<br>INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
<br>INSERT INTO persons(name, age) VALUES ("Rob C", 26);
<br>
<br>CREATE table hobbies (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person_id INTEGER,
<br>    name TEXT);
<br>    
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (6, "WoW");
<br>
<br>SELECT persons.name, hobbies.name FROM persons
<br>    JOIN hobbies
<br>    ON persons.id = hobbies.person_id;
<br>
### Step 3
[x] Now, add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.
<br>
<br>CREATE TABLE persons (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    name TEXT,
<br>    age INTEGER);
<br>    
<br>INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
<br>INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
<br>INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
<br>INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
<br>INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
<br>INSERT INTO persons(name, age) VALUES ("Rob C", 26);
<br>
<br>CREATE table hobbies (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person_id INTEGER,
<br>    name TEXT);
<br>    
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (6, "WoW");
<br>SELECT persons.name, hobbies.name FROM persons
<br>    JOIN hobbies
<br>    ON persons.id = hobbies.person_id;
<br>
<br>SELECT persons.name, hobbies.name FROM persons
<br>    JOIN hobbies
<br>    ON persons.id = hobbies.person_id
<br>    WHERE persons.name = "Bobby McBobbyFace";
<br>
## Challenge: Customer's Orders
### Step 1
[x] We've created a database for customers and their orders. Not all of the customers have made orders, however. Come up with a query that lists the name and email of every customer followed by the item and price of orders they've made. Use a LEFT OUTER JOIN so that a customer is listed even if they've made no orders, and don't add any ORDER BY.

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

SELECT customers.name, customers.email, orders.item, orders.price
    FROM customers 
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;

### Step 2
[x] Now, create another query that will result in one row per each customer, with their name, email, and total amount of money they've spent on orders. Sort the rows according to the total money spent, from the most spent to the least spent.
(Tip: You should always GROUP BY on the column that is most likely to be unique in a row.)
<br>
<br>CREATE TABLE customers (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    name TEXT,
<br>    email TEXT);
<br>    
<br>INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
<br>INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
<br>INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");
<br>
<br>CREATE TABLE orders (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    customer_id INTEGER,
<br>    item TEXT,
<br>    price REAL);
<br>
<br>INSERT INTO orders (customer_id, item, price)
<br>    VALUES (1, "Sonic Screwdriver", 1000.00);
<br>INSERT INTO orders (customer_id, item, price)
<br>    VALUES (2, "High Quality Broomstick", 40.00);
<br>INSERT INTO orders (customer_id, item, price)
<br>    VALUES (1, "TARDIS", 1000000.00);
<br>
<br>SELECT customers.name, customers.email, orders.item, orders.price
<br>    FROM customers 
<br>    LEFT OUTER JOIN orders
<br>    ON customers.id = orders.customer_id;
<br>
<br>SELECT customers.name, customers.email, SUM(price) AS orders
<br>    FROM customers
<br>    LEFT OUTER JOIN orders
<br>    ON customers.id = orders.customer_id
<br>    GROUP BY name
<br>    ORDER BY price DESC;
<br>
## Challenge: Sequels in SQL
### Step 1
[x] We've created a table with all the 'Harry Potter' movies, with a sequel_id column that matches the id of the sequel for each movie. Issue a SELECT that will show the title of each movie next to its sequel's title (or NULL if it doesn't have a sequel).
<br>
<br>CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    title TEXT,
<br>    released INTEGER,
<br>    sequel_id INTEGER);
<br>
<br>INSERT INTO movies 
<br>    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
<br>INSERT INTO movies 
<br>    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
<br>INSERT INTO movies 
<br>    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
<br>INSERT INTO movies 
<br>    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
<br>INSERT INTO movies 
<br>    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
<br>INSERT INTO movies 
<br>    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
<br>INSERT INTO movies 
<br>    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
<br>INSERT INTO movies 
<br>    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);
<br>
<br>SELECT movies.title, sequel.title as sequel
<br>    FROM movies
<br>    LEFT OUTER JOIN movies sequel 
<br>    ON movies.sequel_id = sequel.id;
<br>
## Challenge: FriendBook
### Step 1
[x] We've created a database for a friend networking site, with a table storing data on each person, a table on each person's hobbies, and a table of friend connections between the people. In this first step, use a JOIN to display a table showing people's names with their hobbies.
<br>
<br>CREATE TABLE persons (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    fullname TEXT,
<br>    age INTEGER);
<br>    
<br>INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
<br>INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
<br>INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
<br>INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
<br>INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");
<br>
<br>CREATE table hobbies (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person_id INTEGER,
<br>    name TEXT);
<br>    
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
<br>
<br>CREATE table friends (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person1_id INTEGER,
<br>    person2_id INTEGER);
<br>
<br>INSERT INTO friends (person1_id, person2_id)
<br>    VALUES (1, 4);
<br>INSERT INTO friends (person1_id, person2_id)
<br>    VALUES (2, 3);
<br>    
<br>SELECT persons.fullname, hobbies.name FROM persons
<br>    JOIN hobbies
<br>    ON persons.id = hobbies.person_id
<br>    ;

### Step 2
[x] We've created a database for a friend networking site, with a table storing data on each person, a table on each person's hobbies, and a table of friend connections between the people. In this first step, use a JOIN to display a table showing people's names with their hobbies.
<br>
<br>CREATE TABLE persons (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    fullname TEXT,
<br>    age INTEGER);
<br>    
<br>INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
<br>INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
<br>INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
<br>INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
<br>INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");
<br>
<br>CREATE table hobbies (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person_id INTEGER,
<br>    name TEXT);
<br>    
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
<br>INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
<br>INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
<br>INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
<br>
<br>CREATE table friends (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    person1_id INTEGER,
<br>    person2_id INTEGER);
<br>
<br>INSERT INTO friends (person1_id, person2_id)
<br>    VALUES (1, 4);
<br>INSERT INTO friends (person1_id, person2_id)
<br>    VALUES (2, 3);
<br>    
<br>SELECT persons.fullname, hobbies.name FROM persons
<br>    JOIN hobbies
<br>    ON persons.id = hobbies.person_id
<br>    ;
<br>
<br>SELECT a.fullname, b.fullname
<br>    FROM friends
<br>    JOIN persons a
<br>    ON person1_id = a.id
<br>    JOIN persons b
<br>    ON person2_id = b.id
<br>;

## Project: Famous people
[x] In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.
<br>
<br>CREATE TABLE top_movies (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, year_released INTEGER, genre TEXT, actor TEXT, rating INTEGER);
<br>
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Shawshank Redemption", 1994, "Drama", "Morgan Freeman", 9.2);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Godfather", 1972, "Drama", "Al Pacino", 9.2);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Godfather: Part 2", 1974, "Drama", "Al Pacino", 9.0);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Dark Knight", 2008, "Action", "Christian Bale",  8.9);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The DArk Knight Rises", 2009, "Action", "Christian Bale",  8.9);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Pulp Fiction", 1994, "Drama", "Samuel L Jackson", 8.9);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Lord of the Rings: The Return of the King", 2003, "Fantasy", "Elijah Wood", 8.9);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Fight Club", 1999, "Suspense", "Edward Norton", 8.8);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Lord of the Rings: the Fellowship of the Ring", 2001, "Fantasy", "Elijah Wood", 8.8);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Star Wars: Episode V - The Empire Strikes Back", 1980, "Science Fiction", "Mark Hammil", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Forrest Gump", 1994, "Drama", "Tom Hanks", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Inception", 2010, "Suspense", "Leonardo DiCaprio", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Lord of the Rings: The Two Towers", 2002, "Fantasy", "Elijah Wood", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Titanic", 2000, "Drama", "Leonardo DiCaprio", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("The Matrix", 1999, "Science Fiction", "Keanu Reeves", 8.7);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Star Wars: Episode IV", 1977, "Science Fiction", "Mark Hammil", 8.6);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("John Wick", 2002, "Action", "Keanu Reeves", 8.6);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Se7en", 1995, "Suspense", "Morgan Freeman", 8.6);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Avengers", 1991, "Suspense", "Samuel L Jackson", 8.6);
<br>INSERT INTO top_movies (name, year_released, genre, actor, rating) VALUES ("Leon: The Professional", 1994, "Action", "Natalie Portman", 8.5);
<br>
<br>SELECT actor FROM top_movies
<br>GROUP BY actor;
