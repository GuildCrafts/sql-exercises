## SQL Exercises
Exercises to help exercise the SQL muscles.
Base repository for the [core-sql](https://github.com/GuildCrafts/web-development-js/issues/178) goal.

### Specifications

- [ ] Create a Postgres database called `sql-exercises`
- [ ] Create the schema for the following tables
  - [ ] table name: student,  columns: id, name, grade
    - id is the primary key
    - name is only their first name
    - grade is an integer
    - write the SQL in the file `sql/01-create-table-student.sql`
  - [ ] table name: friend, columns: id1, id2
    - id1 is a foreign key reference to a learner
    - id2 is a foreign key reference to a learner
    - write the SQL in the file `sql/02-create-table-friend.sql`
  - [ ] table name: like, columns: id1, id2
    - id1 is a foreign key reference to a learner
    - id2 is a foreign key reference to a learner      
    - write the SQL in the file `sql/03-create-table-like.sql`
- [ ] Run the SQL for the schema against the `sql-exercises` database to create the tables
- [ ] Load the data into the tables (make sure you have created the tables above)
  - [ ] SQL query to load the CSV file `data/learners.csv` for the `learner` table
    - write the SQL in the file `sql/04-load-table-learner.sql`
  - [ ] SQL query to load the CSV file `data/friends.csv` for the `friend` table
    -  write the query in the file `sql/05-load-table-friend.sql`
  - [ ] SQL query to load the CSV file `data/likes.csv` for the `likes` table
    - write the SQL in the file `sql/06-load-table-like.sql`
  - [ ] make sure to run the queries to load the data into the tables.
- [ ] Find the names of all learners who are friends with someone named Gabriel.
  - write the SQL in the file `sql/07-query-friends-gabriel.sql`
- [ ] For every learner who likes someone 2 or more grades younger than themselves, return that learner's name and grade, and the name and grade of the learner they like.
  - write the SQL in the file `sql/08-query-likes-grade-two-or-more.sql`
- [ ] For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.
  - write the SQL in the file `sql/09-mutual-likes.sql`
- [ ] Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
  - write the SQL in the file `sql/10-not-liked.sql`
- [ ] For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades.
  - write the SQL in the file `sql/11-liked-but-does-not-like.sql`
- [ ] For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.
  - write the SQL in the file `sql/12-find-friends-in-common.sql`
- [ ] Find the name and grade of all students who are liked by more than one other student.
  - write the SQL in the file `sql/13-popular-students.sql`

### Required
- [ ] Make sure each question is copied and pasted in the file which contains the SQL, so that it is easy for the reviewer to know what the SQL is supposed to do.


### Quality Rubric
**Well formatted code**
- All the SQL keywords are capitalized [25 points]

**Good project management**
- Commit messages are concise and descriptive. [25 points]
- All features are added via pull requests. [25 points]
- Every pull request has a description summarizing the changes made. [25 points]
- Every pull request has been reviewed by at least one other person. [25 points]
