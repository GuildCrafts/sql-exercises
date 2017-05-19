-- Solution SQL for the project from the SQL Basics course ("Design a store database")

/* Challenge: Design a store database*/
/* Instructions: Create a database with items for a store. Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */

/*CREATES TABLES*/
CREATE TABLE my_store (id INTEGER PRIMARY KEY, item TEXT, color TEXT, size TEXT, quantity INTEGER, cost INTEGER);
/*INFO IN MY TABLE -- SHIRTS*/
INSERT INTO my_store VALUES (1, "shirt", "red", "M", 5, 6.50 );
INSERT INTO my_store VALUES (2, "shirt", "blue", "L", 8, 7.50);
INSERT INTO my_store VALUES (3, "shirt", "green", "L", 10, 7.50);
INSERT INTO my_store VALUES (4, "shirt", "purple", "M", 7, 6.50);
INSERT INTO my_store VALUES (5, "shirt", "yellow", "L", 8, 7.50);
INSERT INTO my_store VALUES (6, "shirt", "blue", "M", 12, 6.50);
INSERT INTO my_store VALUES (7, "shirt", "blue", "S", 15, 5.50);
INSERT INTO my_store VALUES (8, "shirt", "green", "S", 8, 5.50);
INSERT INTO my_store VALUES (9, "shirt", "purple", "L", 12, 7.50);
INSERT INTO my_store VALUES (10, "shirt", "yellow", "S", 4, 5.50);
INSERT INTO my_store VALUES (11, "shirt", "pink", "M", 14, 6.50);
INSERT INTO my_store VALUES (12, "shirt", "orange", "L", 1, 7.50);
INSERT INTO my_store VALUES (13, "shirt", "orange", "S", 5, 5.50);
INSERT INTO my_store VALUES (14, "shirt", "pink", "L", 10, 7.50);
INSERT INTO my_store VALUES (15, "shirt", "black", "M", 10, 6.50);

INSERT INTO my_store VALUES (16, "pants", "red", "S", 5, 22.50 );
INSERT INTO my_store VALUES (17, "pants", "red", "M", 7, 32.50 );
INSERT INTO my_store VALUES (18, "pants", "red", "L", 10, 42.50 );
INSERT INTO my_store VALUES (19, "pants", "green", "S", 11, 22.50 );
INSERT INTO my_store VALUES (20, "pants", "green", "M", 5, 32.50 );
INSERT INTO my_store VALUES (21, "pants", "green", "L", 9, 42.50 );
INSERT INTO my_store VALUES (22, "pants", "blue", "S", 3, 22.50 );
INSERT INTO my_store VALUES (23, "pants", "blue", "M", 12, 32.50 );
INSERT INTO my_store VALUES (24, "pants", "blue", "L", 14, 42.50 );
INSERT INTO my_store VALUES (25, "pants", "purple", "S", 6, 22.50 );
INSERT INTO my_store VALUES (26, "pants", "purple", "M", 4, 32.50 );
INSERT INTO my_store VALUES (27, "pants", "purple", "L", 9, 42.50 );
INSERT INTO my_store VALUES (28, "pants", "yellow", "S", 7, 22.50 );
INSERT INTO my_store VALUES (29, "pants", "yellow", "M", 12, 32.50 );
INSERT INTO my_store VALUES (30, "pants", "yellow", "L", 19, 42.50 );

SELECT size, item, cost FROM my_store;
SELECT item, color FROM my_store;
SELECT color, size, item FROM my_store WHERE quantity > 8 AND cost > 7  GROUP BY cost;
SELECT AVG(cost) FROM my_store WHERE item = "pants";
