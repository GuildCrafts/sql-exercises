-- Solution SQL for the project from the SQL Basics course ("Design a store database")

CREATE TABLE clothing_store (id INTEGER PRIMARY KEY, product TEXT, color TEXT, price INTEGER, quantity INTEGER);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("T-Shirt", "green", 9.99, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("T-Shirt", "blue", 9.99, 20);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("T-Shirt", "yellow", 9.99, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("T-Shirt", "grey", 9.99, 20);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("T-Shirt", "black", 9.99, 25);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Tanktop", "green", 5.99, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Tanktop", "blue", 5.99, 5);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Tanktop", "yellow", 5.99, 15);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Tanktop", "gray", 5.99, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Tanktop", "black", 5.99, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Skinny Jeans", "denim", 35.00, 5);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Slim Jeans", "black", 46.94, 10);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Straight Jeans", "light blue", 44.94, 15);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Regular Jeans", "dark blue", 35.00, 12);

INSERT INTO clothing_store (product, color, price, quantity) VALUES ("Athletic Jeans", "denim", 40.00, 17);

SELECT product, price FROM clothing_store ORDER BY price;

SELECT product, price, COUNT(*) FROM clothing_store GROUP BY price;
