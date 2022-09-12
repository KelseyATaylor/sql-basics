-- 1.--

CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(30) NOT NULL,
  age INTEGER NOT NULL,
  height INTEGER NOT NULL,
  city VARCHAR(30) NOT NULL,
  favorite_color VARCHAR(30) NOT NULL
  );

--2.--

INSERT INTO person (person_name, age, height, city, favorite_color)
VALUES ('Ashton', 19, 168, 'Saratoga Springs', 'orange'),
('Jacob', 37, 188, 'Waco', 'orange'),
('Cody', 21, 181, 'Phoenix', 'black'),
('Kara', 33, 165, 'Las Vegas', 'pink'),
('Coulsen', 22, 183, 'Saratoga Springs', 'blue');

--3.--
SELECT height, person_name 
FROM person
ORDER BY height DESC
;

--4.--
SELECT height, person_name 
FROM person
ORDER BY height
;

--5.--
SELECT age, person_name 
FROM person
ORDER BY age DESC
;

--6.--
SELECT * FROM person
WHERE age > 20
;

--7.--
SELECT * FROM person
WHERE age = 18
;

--8.--
SELECT * FROM person
WHERE age < 20 or age >30
;

--9.--
SELECT * FROM person
WHERE age <> 27
;

--10.--
SELECT * FROM person
WHERE favorite_color <> 'red'
;

--11.--
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue'
;

--12.--
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green'
;

--13.--
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue')
;

--14.--
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')