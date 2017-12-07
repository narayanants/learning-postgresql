-- The DISTINCT clause is used in the SELECT statement to remove duplicate rows from the result set.
-- The DISTINCT clause keeps one row for each group of duplicates.
SELECT DISTINCT first_name, last_name
FROM customer;
-- SELECT Distinct first_name last_name
SELECT DISTINCT ON
(first_name),last_name FROM customer ORDER BY first_name;
--  Create Table for t1
CREATE TABLE t1
(
    id serial NOT NULL PRIMARY KEY,
    bcolor VARCHAR,
    fcolor VARCHAR
);
-- Insert Data to t1
INSERT INTO t1
    (bcolor, fcolor)
VALUES
    ('red', 'red'),
    ('red', 'red'),
    ('red', NULL),
    (NULL, 'red'),
    ('red', 'green'),
    ('red', 'blue'),
    ('green', 'red'),
    ('green', 'blue'),
    ('green', 'green'),
    ('blue', 'red'),
    ('blue', 'green'),
    ('blue', 'blue');
--  Distinct Query
SELECT id, bcolor, fcolor
FROM t1;
SELECT DISTINCT bcolor
FROM t1
ORDER BY bcolor;
-- Distinct ON Example
SELECT DISTINCT ON
(bcolor)bcolor,fcolor FROM t1 ORDER BY bcolor,fcolor;
