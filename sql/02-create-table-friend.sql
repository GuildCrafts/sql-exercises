CREATE TABLE friend (
    id1 INT REFERENCES student(id),
    id2 INT REFERENCES student(id)
);
