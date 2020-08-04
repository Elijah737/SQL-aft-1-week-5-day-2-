-- --1
-- SELECT * FROM artist;
-- --2
-- SELECT first_name, last_name, country FROM employee;
-- --3
-- SELECT name, composer, milliseconds FROM track WHERE milliseconds > 299000;
-- --4
-- SELECT count(*) FROM track WHERE milliseconds > 299000


-- --black diamond

-- --1
-- SELECT AVG(milliseconds) FROM track;

-- --2
-- SELECT * FROM invoice;
-- SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- --3
-- SELECT first_name FROM costomer WHERE first_name LIKE %a%;

-- --4
-- SELECT * FROM track ORDER BY milliseconds DESC LIMIT 10;



--Day 2 afternoon

--1
CREATE TABLE person 
    (person_id SERIAL PRIMARY KEY, 
    name VARCHAR(200), 
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200));

--2
INSERT INTO person 
    ( name, age, height, city, favorite_color )
    VALUES 
    ( 'Jimmy Dean', 21, 182, 'Denver', 'purple'), 
    ('Bob Dole', 72, 165, 'DC', 'fuscia'),
    ( 'Samantha Cruise', 25, 182, 'Atlanta', 'green'),
    ('Ellen Ripley', 32, 155, 'Albany', 'black'),
    ( 'Sarah Connor', 41, 149, 'Wilmington', 'yellow');

--3
SELECT * FROM person ORDER BY height DESC;

--4
SELECT * FROM person ORDER BY height; 

--5
SELECT * FROM person ORDER BY age DESC;

--6
SELECT * FROM person WHERE age > 20;

--7
SELECT * FROM person WHERE age = 18;

--8
SELECT * FROM person WHERE age < 20 OR age > 30;

--9
SELECT * FROM person WHERE age != 27;

--10
SELECT * FROM person WHERE favorite_color != 'red';

--11
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

--12
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

--13
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );

--14
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )




--ORDERS
CREATE TABLE orders 
    ( order_id SERIAL PRIMARY KEY, 
    person_id INTEGER, 
    product_name VARCHAR(200), 
    product_price NUMERIC, 
    quantity INTEGER )

--1
    INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
    VALUES ( 0, 'Mega Man II', 12.95, 1 ), 
           ( 1, 'Blaster Master', 9.95, 3 ),
           ( 2, 'Battletoads', 10.95, 1 ),
           ( 3, 'Turtles In Time', 12.95, 4 );

--2
SELECT * FROM orders;

--3
SELECT SUM(quantity) FROM orders;

--4
SELECT SUM(product_price) FROM orders;

--5
SELECT SUM(product_price * quantity ) FROM orders;

--6
SELECT SUM(product_price * quantity ) FROM orders WHERE person_id =3;




--ARTIST

--1
INSERT INTO artist (name) VALUES ( 'David Bowie'), ('Trent Resnor'), ('Marilyn Manson' );

--2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

--3
SELECT * FROM artist ORDER BY name LIMIT 5;

--4
SELECT * FROM artist WHERE name LIKE 'Black%';

--5
SELECT * FROM artist WHERE name LIKE '%Black%';




--Employee

--1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

--2
SELECT MAX(birth_date) FROM employee;

--3
SELECT MIN(birth_date) FROM employee;

--4
SELECT * FROM employee WHERE reports_to = 2;

--5
SELECT * FROM employee WHERE city = 'Lethbridge';




--Invoice

--1
SELECT * FROM invoice WHERE billing_country = 'USA';

--2
SELECT MAX(total) FROM invoice;

--3
SELECT MIN(total) FROM invoice;

--4
SELECT * FROM invoice WHERE total > 5;

--5
SELECT * FROM invoice WHERE total < 5;

--6
SELECT * FROM invoice WHERE billing_state IN ( 'CA', 'TX', 'AZ' );

--7
SELECT AVG(total) FROM invoice;

--8
SELECT SUM(total) FROM invoice;

