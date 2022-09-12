--1.--
CREATE TABLE orders(
person_id SERIAL PRIMARY KEY NOT NULL,
order_id SERIAL NOT NULL,
product_name VARCHAR(30) NOT NULL,
product_price DECIMAL NOT NULL,
quantity INTEGER NOT NULL
);

--2.--
INSERT INTO orders (product_name, product_price, quantity)
VALUES ('grilled cheese', 5.00, 1),
('steak', 15.95, 3),
('breadsticks', 3.55, 2),
('caesar salad', 4.95, 1),
('lemonade', 2.50, 5);

--3.--
SELECT * FROM orders;

--4.--
SELECT SUM(quantity) FROM orders;

--5.--
SELECT SUM(product_price) FROM orders;

--6.--
SELECT product_price FROM orders
WHERE person_id = 3
;