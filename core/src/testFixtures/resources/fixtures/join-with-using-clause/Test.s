CREATE TABLE A (a_id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE B (a_id INTEGER UNIQUE REFERENCES A(a_id), count INTEGER);

CREATE VIEW AB AS
SELECT *
FROM A, B
USING (a_id);

SELECT *
FROM AB
WHERE count > 5;

SELECT *
FROM AB
WHERE a_id = 1;

SELECT B.a_id
FROM A
JOIN B USING (a_id);

SELECT B.a_id
FROM A
LEFT JOIN B USING (a_id);

SELECT B.a_id
FROM A
RIGHT JOIN B USING (a_id);

SELECT B.a_id
FROM A
FULL JOIN B USING (a_id);
