-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")

CREATE TABLE player(id INTEGER PRIMARY KEY, name TEXT, item TEXT, gender TEXT, age INTEGER);

INSERT INTO player VALUES(1,"Briy", "Laptop", "Female", 29);
INSERT INTO player VALUES(2, "Johnny", "Book of Spells", "Male", 33 );
INSERT INTO player VALUES(3, "Stacy", "Stick", "Female", 27);
INSERT INTO player VALUES(4, "Billy", "Gun", "Male", 28);
INSERT INTO player VALUES(5, "Sandra", "Bullets", "Male", 25);

UPDATE player
    SET gender = "Female"
    WHERE id = 5;
UPDATE player
    SET age = 22, name = "Brenda", gender = "Female", item = "Camera"
    WHERE id = 4;
DELETE player
    WHERE id = 2;
