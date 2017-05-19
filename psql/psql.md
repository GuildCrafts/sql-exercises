# postgrs.sql
## Create Database
SQL Command
```
psql
CREATE DATABASE testdb;
```
 Results
 ```
hellaboredguy=# CREATE DATABASE testdb;
CREATE DATABASE
hellaboredguy=# \l
                                           List of databases
     Name      |     Owner     | Encoding |   Collate   |    Ctype    |        Access privileges
---------------+---------------+----------+-------------+-------------+---------------------------------
 dbname        | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 hellaboredguy | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres      | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0     | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/hellaboredguy               +
               |               |          |             |             | hellaboredguy=CTc/hellaboredguy
 template1     | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/hellaboredguy               +
               |               |          |             |             | hellaboredguy=CTc/hellaboredguy
 testdb        | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
(6 rows)

 ```
 
## Selecting the Database
SQL Command
```
\c testdb
```

Results
```
hellaboredguy=# \c testdb
You are now connected to database "testdb" as user "hellaboredguy".
```

## Dropping the Database
SQL Command
```
dropdb -h localhost -p 5432 -U postgress testdb
```

Results
```
hellaboredguy=# DROP DATABASE testdb;
DROP DATABASE
hellaboredguy=# \l
                                           List of databases
     Name      |     Owner     | Encoding |   Collate   |    Ctype    |        Access privileges
---------------+---------------+----------+-------------+-------------+---------------------------------
 dbname        | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 hellaboredguy | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres      | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0     | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/hellaboredguy               +
               |               |          |             |             | hellaboredguy=CTc/hellaboredguy
 template1     | hellaboredguy | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/hellaboredguy               +
               |               |          |             |             | hellaboredguy=CTc/hellaboredguy
(5 rows)

hellaboredguy=#
```

## Create Table
SQL Command
```
hellaboredguy=# CREATE TABLE COMPANY(
hellaboredguy(#    ID INT PRIMARY KEY     NOT NULL,
hellaboredguy(#    NAME           TEXT    NOT NULL,
hellaboredguy(#    AGE            INT     NOT NULL,
hellaboredguy(#    ADDRESS        CHAR(50),
hellaboredguy(#    SALARY         REAL
hellaboredguy(# );
CREATE TABLE

hellaboredguy=# CREATE TABLE DEPARTMENT(
hellaboredguy(#    ID INT PRIMARY KEY      NOT NULL,
hellaboredguy(#    DEPT           CHAR(50) NOT NULL,
hellaboredguy(#    EMP_ID         INT      NOT NULL
hellaboredguy(# );
CREATE TABLE

hellaboredguy=# \d

hellaboredguy-# \d company

hellaboredguy-# \d department
```
Results
```
hellaboredguy=# CREATE TABLE COMPANY(
hellaboredguy(#    ID INT PRIMARY KEY     NOT NULL,
hellaboredguy(#    NAME           TEXT    NOT NULL,
hellaboredguy(#    AGE            INT     NOT NULL,
hellaboredguy(#    ADDRESS        CHAR(50),
hellaboredguy(#    SALARY         REAL
hellaboredguy(# );
CREATE TABLE
hellaboredguy=# CREATE TABLE DEPARTMENT(
hellaboredguy(#    ID INT PRIMARY KEY      NOT NULL,
hellaboredguy(#    DEPT           CHAR(50) NOT NULL,
hellaboredguy(#    EMP_ID         INT      NOT NULL
hellaboredguy(# );
CREATE TABLE
hellaboredguy=# \d
              List of relations
 Schema |    Name    | Type  |     Owner
--------+------------+-------+---------------
 public | company    | table | hellaboredguy
 public | department | table | hellaboredguy
(2 rows)

hellaboredguy-# \d company
       Table "public.company"
 Column  |     Type      | Modifiers
---------+---------------+-----------
 id      | integer       | not null
 name    | text          | not null
 age     | integer       | not null
 address | character(50) |
 salary  | real          |
Indexes:
    "company_pkey" PRIMARY KEY, btree (id)

hellaboredguy-# \d department
     Table "public.department"
 Column |     Type      | Modifiers
--------+---------------+-----------
 id     | integer       | not null
 dept   | character(50) | not null
 emp_id | integer       | not null
Indexes:
    "department_pkey" PRIMARY KEY, btree (id)

```

## Drop Table
SQL Command
```
drop table department, company;
```
Results
```
hellaboredguy=# drop table department, company;
DROP TABLE
```

## Schema
SQL Command
```
hellaboredguy=# create table myschema.company(
hellaboredguy(#    ID   INT              NOT NULL,
hellaboredguy(#    NAME VARCHAR (20)     NOT NULL,
hellaboredguy(#    AGE  INT              NOT NULL,
hellaboredguy(#    ADDRESS  CHAR (25),
hellaboredguy(#    SALARY   DECIMAL (18, 2),
hellaboredguy(#    PRIMARY KEY (ID)
hellaboredguy(# );

select * from myschema.company;

DROP SCHEMA myschema CASCADE;
```

Results
```
hellaboredguy=# create table myschema.company(
hellaboredguy(#    ID   INT              NOT NULL,
hellaboredguy(#    NAME VARCHAR (20)     NOT NULL,
hellaboredguy(#    AGE  INT              NOT NULL,
hellaboredguy(#    ADDRESS  CHAR (25),
hellaboredguy(#    SALARY   DECIMAL (18, 2),
hellaboredguy(#    PRIMARY KEY (ID)
hellaboredguy(# );
CREATE TABLE

hellaboredguy=# select * from myschema.company;
 id | name | age | address | salary
----+------+-----+---------+--------
(0 rows)

hellaboredguy=# DROP SCHEMA myschema CASCADE;
NOTICE:  drop cascades to table myschema.company
DROP SCHEMA

```

## Insert
SQL Command
```
CREATE TABLE COMPANY(
ID INT PRIMARY KEY NOT NULL,
NAME TEXT NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR(50),
SALARY REAL,
JOIN_DATE DATE
);

\d

\d company

```

Results
```
hellaboredguy=# CREATE TABLE COMPANY(
hellaboredguy(# ID INT PRIMARY KEY NOT NULL,
hellaboredguy(# NAME TEXT NOT NULL,
hellaboredguy(# AGE INT NOT NULL,
hellaboredguy(# ADDRESS CHAR(50),
hellaboredguy(# SALARY REAL,
hellaboredguy(# JOIN_DATE DATE
hellaboredguy(# );
CREATE TABLE

hellaboredguy=# \d
            List of relations
 Schema |  Name   | Type  |     Owner
--------+---------+-------+---------------
 public | company | table | hellaboredguy
(1 row)

hellaboredguy=# \d company
        Table "public.company"
  Column   |     Type      | Modifiers
-----------+---------------+-----------
 id        | integer       | not null
 name      | text          | not null
 age       | integer       | not null
 address   | character(50) |
 salary    | real          |
 join_date | date          |
Indexes:
    "company_pkey" PRIMARY KEY, btree (id)
    
ID        NAME        AGE        ADDRESS     SALARY	  JOIN_DATE
----      ----------  -----      ----------  -------      --------
1         Paul        32         California  20000.0      2001-07-13
2         Allen       25         Texas                    2007-12-13
3         Teddy       23         Norway      20000.0
4         Mark        25         Rich-Mond   65000.0      2007-12-13
5         David       27         Texas       85000.0      2007-12-13
```

## Select
SQL Command
```
SELECT * FROM COMPANY;
```

Results
```
hellaboredguy=# SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  3 | Teddy |  23 | Norway                                             |  20000 |
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(5 rows)

```

## Expressions 
SQL Command
```
SELECT * FROM COMPANY WHERE SALARY = 10000;

SELECT (15 + 6) AS ADDITION ;

SELECT COUNT(*) AS "RECORDS" FROM COMPANY;

SELECT CURRENT_TIMESTAMP;
```

Results
```
hellaboredguy=# SELECT * FROM COMPANY WHERE SALARY = 10000;
 id | name | age | address | salary | join_date
----+------+-----+---------+--------+-----------
(0 rows)

hellaboredguy=# SELECT (15 + 6) AS ADDITION ;
 addition
----------
       21
(1 row)

hellaboredguy=# SELECT COUNT(*) AS "RECORDS" FROM COMPANY;
 RECORDS
---------
       5
(1 row)

hellaboredguy=# SELECT CURRENT_TIMESTAMP;
              now
-------------------------------
 2017-05-18 12:01:24.263437-07
(1 row)
```

## Where clause
SQL Command
```
select * from COMPANY;

SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;

SELECT * FROM COMPANY WHERE AGE IS NOT NULL;

SELECT * FROM COMPANY WHERE NAME LIKE 'Pa%';

SELECT * FROM COMPANY WHERE AGE NOT IN ( 25, 27 );

SELECT * FROM COMPANY WHERE AGE BETWEEN 25 AND 27;
```

Results
```
hellaboredguy=# select * from COMPANY;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  3 | Teddy |  23 | Norway                                             |  20000 |
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(5 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(2 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE AGE IS NOT NULL;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  3 | Teddy |  23 | Norway                                             |  20000 |
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(5 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE NAME LIKE 'Pa%';
 id | name | age |                      address                       | salary | join_date
----+------+-----+----------------------------------------------------+--------+------------
  1 | Paul |  32 | California                                         |  20000 | 2001-07-13
(1 row)

hellaboredguy=# SELECT * FROM COMPANY WHERE AGE NOT IN ( 25, 27 );
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  3 | Teddy |  23 | Norway                                             |  20000 |
(2 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE AGE BETWEEN 25 AND 27;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(3 rows)

```

## and / or operators
SQL Command
```
SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;

SELECT * FROM COMPANY WHERE AGE >= 25 OR SALARY >= 65000;
```

Results
```
hellaboredguy=# SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(2 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE AGE >= 25 OR SALARY >= 65000;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
(4 rows)
```

## Update Queries
SQL Command
```
UPDATE COMPANY SET SALARY = 15000 WHERE ID = 3;

UPDATE COMPANY SET ADDRESS = 'Texas', SALARY=20000;
```

Results
```
hellaboredguy=# UPDATE COMPANY SET SALARY = 15000 WHERE ID = 3;
UPDATE 1

hellaboredguy=# UPDATE COMPANY SET ADDRESS = 'Texas', SALARY=20000;
UPDATE 5

hellaboredguy=# SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | Texas                                              |  20000 | 2001-07-13
  2 | Allen |  25 | Texas                                              |  20000 | 2007-12-13
  4 | Mark  |  25 | Texas                                              |  20000 | 2007-12-13
  5 | David |  27 | Texas                                              |  20000 | 2007-12-13
  3 | Teddy |  23 | Texas                                              |  15000 |
(5 rows)
```

## Delete Queries
SQL Command
```
DELETE FROM COMPANY WHERE ID = 2;

DELETE FROM COMPANY;
```

Results
```
hellaboredguy=# DELETE FROM COMPANY WHERE ID = 2;
DELETE 1
hellaboredguy=# SELECT * FROM COMPANY;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  1 | Paul  |  32 | Texas                                              |  20000 | 2001-07-13
  4 | Mark  |  25 | Texas                                              |  20000 | 2007-12-13
  5 | David |  27 | Texas                                              |  20000 | 2007-12-13
  3 | Teddy |  23 | Texas                                              |  15000 |
(4 rows)

hellaboredguy=# DELETE FROM COMPANY;
DELETE 4
hellaboredguy=# SELECT * FROM COMPANY;
 id | name | age | address | salary | join_date
----+------+-----+---------+--------+-----------
(0 rows)
```

## like clause
SQL Command
```
SELECT * FROM COMPANY WHERE AGE::text LIKE '2%';

SELECT * FROM COMPANY WHERE ADDRESS  LIKE '%-%';
```

Results
```
hellaboredguy=# SELECT * FROM COMPANY WHERE AGE::text LIKE '2%';
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
  3 | Teddy |  23 | Norway                                             |  20000 |
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
(4 rows)

hellaboredguy=# SELECT * FROM COMPANY WHERE ADDRESS  LIKE '%-%';
 id | name | age |                      address                       | salary | join_date
----+------+-----+----------------------------------------------------+--------+------------
  4 | Mark |  25 | Rich-Mond                                          |  65000 | 2007-12-13
(1 row)
```

## limit clause
SQL Command
```
SELECT * FROM COMPANY LIMIT 4;

SELECT * FROM COMPANY LIMIT 3 OFFSET 2;
```

Results
```
hellaboredguy=# SELECT * FROM COMPANY LIMIT 4;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
  3 | Teddy |  23 | Norway                                             |  20000 |
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
(4 rows)

hellaboredguy=# SELECT * FROM COMPANY LIMIT 3 OFFSET 2;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  3 | Teddy |  23 | Norway                                             |  20000 |
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
(3 rows)
```

## order by clause
SQL Command
```
SELECT * FROM COMPANY ORDER BY AGE ASC;

SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC;

SELECT * FROM COMPANY ORDER BY NAME DESC;

```

Results
```
hellaboredguy=# SELECT * FROM COMPANY ORDER BY AGE ASC;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  3 | Teddy |  23 | Norway                                             |  20000 |
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
(5 rows)

hellaboredguy=# SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  3 | Teddy |  23 | Norway                                             |  20000 |
(5 rows)

hellaboredguy=# SELECT * FROM COMPANY ORDER BY NAME DESC;
 id | name  | age |                      address                       | salary | join_date
----+-------+-----+----------------------------------------------------+--------+------------
  3 | Teddy |  23 | Norway                                             |  20000 |
  1 | Paul  |  32 | California                                         |  20000 | 2001-07-13
  4 | Mark  |  25 | Rich-Mond                                          |  65000 | 2007-12-13
  5 | David |  27 | Texas                                              |  85000 | 2007-12-13
  2 | Allen |  25 | Texas                                              |        | 2007-12-13
(5 rows)
```

## group by clause
SQL Command
```
SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME;

SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME ORDER BY NAME;

SELECT NAME, SUM(SALARY)
FROM COMPANY GROUP BY NAME ORDER BY NAME DESC;
```

Results
```
hellaboredguy=# SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME;
 name  |  sum
-------+-------
 Teddy | 20000
 Paul  | 20000
 Mark  | 65000
 David | 85000
 Allen |
(5 rows)

hellaboredguy=# SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME ORDER BY NAME;
 name  |  sum
-------+-------
 Allen |
 David | 85000
 James | 10000
 Mark  | 65000
 Paul  | 40000
 Teddy | 20000
(6 rows)

hellaboredguy=# SELECT NAME, SUM(SALARY)
hellaboredguy-# FROM COMPANY GROUP BY NAME ORDER BY NAME DESC;
 name  |  sum
-------+-------
 Teddy | 20000
 Paul  | 40000
 Mark  | 65000
 James | 10000
 David | 85000
 Allen |
(6 rows)
```
