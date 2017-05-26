-- Attempting to use the formatting from postgresql documentation
-- https://www.postgresql.org/files/documentation/pdf/9.6/postgresql-9.6-US.pdf
-- page 7 Example:

-- CREATE TABLE weather (
	-- city varchar(80),
	-- temp_lo int, -- low temperature
	-- temp_hi int, -- high temperature
	-- prcp real, -- precipitation
	-- date date
	-- );
DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id SERIAL PRIMARY KEY, -- autoincrementing 4-byte integer
	name VARCHAR(55),
	grade INTEGER
	);

	-- *OR*

-- CREATE TABLE student (
-- 	id SMALLSERIAL PRIMARY KEY, --autoincrementing 2-byte integer (saves memory??)
-- 	name TEXT,
-- 	grade INTEGER
-- );