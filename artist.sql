-- In the artist.sql file, write out the code for the following problems:

-- 1. Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
  VALUES ('Misty'),
  ('Rachel'),
  ('Chris');

-- 2. Select 10 artists in reverse alphabetical order.
SELECT name
FROM artist
ORDER BY name DESC
LIMIT 10;

-- 3. Select 5 artists in alphabetical order.
SELECT name
FROM artist
ORDER BY name ASC
LIMIT 10;

-- 4. Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- 5. Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';