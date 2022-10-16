-- In the person.sql file, write out the code for the following problems:

-- 1. Create a table called person that records a person’s id, name, age, height (in cm) , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE persons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  age INTEGER,
  height_cm FlOAT,
  city VARCHAR(20),
  favorite_color VARCHAR(20)
  );

-- 2. Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO persons (name)
Values ('Chris'),
('Bobby'),
('Julie'),
('Mark'),
('Jim');

INSERT INTO persons (name, age, height_cm, city, favorite_color)
VALUES ('Misty', '3', '30', 'Miami, FL', 'cat food brown'),
('Chris', '3', '185', 'Miami, FL', 'green'),
('Bobby', '3', '165', 'Chapin, SC', 'Blue'),
('Julie', '3', '165', 'Cairns, QLD', 'Ruby'),
('Mark', '3', '175', 'Chapin, SC', 'Navy'),
('Jim','3', '175', 'Cairns, QLD', 'Ocean Blue');

-- 3. Select all the people in the person table by height from tallest to shortest.
SELECT * FROM persons 
ORDER BY height_cm DESC;

-- 4. Select all the people in the person table by height from shortest to tallest.
SELECT * FROM persons 
ORDER BY height_cm ASC;

-- 5. Select all the people in the person table by age from oldest to youngest.
SELECT * FROM persons 
ORDER BY age DESC;

-- 6. Select all the people in the person table older than age 20.
SELECT * FROM persons WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18.
SELECT * FROM persons WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM persons WHERE age BETWEEN 20 AND 30;

-- 9. Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM persons WHERE age != 27;

-- 10. Select all the people in the person table where their favorite color is not red.
SELECT * FROM persons WHERE favorite_color != 'red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM persons WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- 12. Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM persons WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM persons WHERE favorite_color IN ('orange', 'green', 'blue')

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM persons WHERE favorite_color IN ('yellow', 'purple')