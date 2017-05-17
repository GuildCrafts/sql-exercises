# Modifying databases with SQL
## Challenge: Dynamic Documents
### Step 1
[x] We've created a database for a documents app, with rows for each document with it's title, content, and author. In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.

<br>CREATE table documents (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    title TEXT,
<br>    content TEXT,
<br>    author TEXT);
<br>    
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");
<br>
<br>SELECT * FROM documents;
<br>UPDATE documents SET content = "Jackie Draper" WHERE author = "Jackie Paper";
<br>SELECT * FROM documents;

### Step 2
[x] Now you'll delete a row, being very careful not to delete all the rows. Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.

<br>CREATE table documents (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    title TEXT,
<br>    content TEXT,
<br>    author TEXT);
<br>    
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
<br>INSERT INTO documents (author, title, content)
<br>    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");
<br>
<br>SELECT * FROM documents;
<br>UPDATE documents SET content = "Jackie Draper" WHERE author = "Jackie Paper";
<br>SELECT * FROM documents;
<br>DELETE FROM documents WHERE title = "Things I'm Afraid Of";
<br>SELECT * FROM documents

## Challenge: Clothing alterations
### Step 1
[x] We've created a database of clothes, and decided we need a price column. Use ALTER to add a 'price' column to the table. Then select all the columns in each row to see what your table looks like now.

<br>CREATE TABLE clothes (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    type TEXT,
<br>    design TEXT);
<br>    
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("dress", "pink polka dots");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("pants", "rainbow tie-dye");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("blazer", "black sequin");
<br>
<br>ALTER TABLE clothes ADD price INTEGER;
<br>
<br>SELECT * FROM clothes;

### Step 2
[x] update cloths pricing

<br>CREATE TABLE clothes (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    type TEXT,
<br>    design TEXT);
<br>    
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("dress", "pink polka dots");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("pants", "rainbow tie-dye");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("blazer", "black sequin");
<br>
<br>ALTER TABLE clothes ADD price INTEGER;
<br>
<br>SELECT * FROM clothes;
<br>
<br>UPDATE clothes SET price = 10 WHERE id = 1;
<br>UPDATE clothes SET price = 20 WHERE id = 2;
<br>UPDATE clothes SET price = 30 WHERE id = 3;
<br>
<br>SELECT * FROM clothes;

### Step 3
[x] Now insert a new item into the table that has all three attributes filled in, including 'price'. Do one final SELECT of all the rows to check it worked.
<br>
<br>CREATE TABLE clothes (
<br>    id INTEGER PRIMARY KEY AUTOINCREMENT,
<br>    type TEXT,
<br>    design TEXT);
<br>    
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("dress", "pink polka dots");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("pants", "rainbow tie-dye");
<br>INSERT INTO clothes (type, design)
<br>    VALUES ("blazer", "black sequin");
<br>
<br>ALTER TABLE clothes ADD price INTEGER;
<br>
<br>SELECT * FROM clothes;
<br>
<br>UPDATE clothes SET price = 10 WHERE id = 1;
<br>UPDATE clothes SET price = 20 WHERE id = 2;
<br>UPDATE clothes SET price = 30 WHERE id = 3;
<br>
<br>SELECT * FROM clothes;
<br>
<br>INSERT INTO clothes (type, design, price) VALUES ("taco", "carne asada", 1);

<br>SELECT * FROM clothes;