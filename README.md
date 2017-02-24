# SQL Exercises

Exercises to help exercise the SQL muscles.

Base repository for the [core-sql](https://github.com/GuildCrafts/web-development-js/issues/178) goal.

## Getting Started

Create a Postgres database called `sql-exercises`. Use this database for all of the exercises.

## Exercises

### Build the Schema

Create the schema for the following tables.

**01:** Table name: `student`, columns: `id`, `name`, `grade`
- `id` is the primary key
- `name` is only their first name
- `grade` is an integer
- write the SQL in the file `sql/01-create-table-student.sql`

**02:** Table name: `friend`, columns: `id1`, `id2`
- `id1` is a foreign key reference to a student
- `id2` is a foreign key reference to a student
- write the SQL in the file `sql/02-create-table-friend.sql`

**03:** Table name: `like`, columns: `liker_id`, `likee_id`
- `liker_id` is a foreign key reference to a student
- `likee_id` is a foreign key reference to a student
- write the SQL in the file `sql/03-create-table-like.sql`

Run the SQL for the schema against the `sql-exercises` database to create the tables.

### Load the Data

Load the data into the tables (make sure you have created the tables above).

**04:** SQL query to load the CSV file `data/students.csv` for the `student` table
<br>Write the SQL in the file `sql/04-load-table-student.sql`

**05:** SQL query to load the CSV file `data/friends.csv` for the `friend` table
<br>Write the query in the file `sql/05-load-table-friend.sql`

**06:** SQL query to load the CSV file `data/likes.csv` for the `like` table
<br>Write the SQL in the file `sql/06-load-table-like.sql`

Run the queries to load the data into the tables.

### Query the Data

Make sure each question is copied and pasted in the file which contains the SQL, so that it is easy for the reviewer to know what the SQL is supposed to do.

**07:** Find the names of all students who are friends with someone named Gabriel.
<br>Write the SQL in the file `sql/07-query-friends-gabriel.sql`

**08:** For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.
<br>Write the SQL in the file `sql/08-query-likes-grade-two-or-more.sql`

**09:** For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
<br>Write the SQL in the file `sql/09-mutual-likes.sql`

**10:** Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
<br>Write the SQL in the file `sql/10-not-liked.sql`

**11:** For every situation where student A likes student B, but we have no information about whom B likes (that is, B's id does not appear in the `liker_id` column of the like table), return A and B's names and grades.
<br>Write the SQL in the file `sql/11-liked-but-does-not-like.sql`

**12:** For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.
<br>Write the SQL in the file `sql/12-find-friends-in-common.sql`

**13:** Find the name and grade of all students who are liked by more than one other student.
<br>Write the SQL in the file `sql/13-popular-students.sql`
