.read lab11.sql


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING COUNT(*) = 1;

CREATE TABLE sp20favpets AS
  SELECT pet, COUNT(*) AS count FROM students
    GROUP BY pet ORDER BY count DESC LIMIT 10;

CREATE TABLE sp20dog AS
  SELECT pet, COUNT(*) FROM students WHERE pet = 'dog';

CREATE TABLE obedienceimages AS
  SELECT seven, instructor, COUNT(*) FROM students WHERE seven = '7'
    GROUP BY instructor;
