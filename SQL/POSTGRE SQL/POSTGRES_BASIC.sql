CREATE TABLE employees(
	id INTEGER,
	name VARCHAR(100),
	salary NUMERIC(10,2)
);

SELECT current_user;

SELECT * from employees;
DROP table employees;


CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	salary NUMERIC(10,2)
);

SELECT * from employees;



INSERT INTO employees(name,salary)
VALUES('MILI',35000);

SELECT * FROM employees;

INSERT INTO employees(name,salary)
VALUES('SHUVO',42000),
('MAHIN',27000),
('MILI',25000);

SELECT * FROM employees;



UPDATE employees
SET salary=31000
WHERE id=3

SELECT * FROM employees;

UPDATE employees
SET salary=30000
WHERE id=23


DELETE FROM employees
WHERE name='MILI'

SELECT * FROM employees;


UPDATE employees
SET salary=60000
WHERE name='SHUVO'

DELETE FROM employees
WHERE name='MILI'

SELECT * FROM employees;



CREATE TABLE customers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	amount NUMERIC(10,2)
);

SELECT * FROM customers;
SELECT * FROM orders;

INSERT INTO customers(name)
VALUES 
('Rahim'),
('Karim'),
('Salma'),
('Jahid'),
('Rafi'),
('Nusrat'),
('Sadia'),
('Tariq'),
('Mehedi'),
('Ayesha'),
('Imran'),
('Rakib'),
('Jannat'),
('Shila'),
('Hasan'),
('Mim'),
('Sabbir'),
('Nayeem'),
('Tania'),
('Arif');

INSERT INTO customers(name)
VALUES 
('ShuvrO'),
('Nibir'),
('Palash')



INSERT INTO orders(customer_id, amount)
VALUES
(1, 500),
(2, 1200),
(3, 750),
(4, 300),
(5, 950),
(6, 400),
(7, 1500),
(8, 600),
(9, 1100),
(10, 2000),
(11, 850),
(12, 670),
(13, 990),
(14, 430),
(15, 1230),
(16, 520),
(17, 880),
(18, 1400),
(19, 3000),
(20, 760),
(1,450),
(1,340),
(5,720);

INSERT INTO orders(customer_id, amount)
VALUES
(22,450);

INSERT INTO orders(customer_id, amount)
VALUES
(22,450),
(23,456),
(34,563);

SELECT * FROM orders;


SELECT c.id,c.name,o.amount 
FROM customers c
INNER JOIN orders o
ON c.id=o.customer_id


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>1000;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.id=13


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>500 AND o.amount<1500;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' AND o.amount>400;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' OR c.name='Sadia' OR c.name='Nibir'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE 'S%'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%a'

SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%ni%' OR c.name LIKE '%he%'




SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>1000;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.id=13


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>500 AND o.amount<1500;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' AND o.amount>400;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' OR c.name='Sadia' OR c.name='Nibir'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE 'S%'


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%a'

SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount ASC;

SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount DESC



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount DESC
LIMIT 4;



SELECT COUNT(*)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id


SELECT COUNT(*) FROM customers;

SELECT SUM(amount) AS TOTAL_AMOUNT 
FROM ORDERS

SELECT SUM(amount) AS TOTAL_AMOUNT 
FROM ORDERS
WHERE amount>1500;

SELECT amount  
FROM ORDERS
WHERE amount>1500;

SELECT AVG(amount) AS TOTAL_AMOUNT 
FROM ORDERS


SELECT AVG(amount) AS AVERAGE
FROM ORDERS
WHERE amount>1500;


SELECT MAX(amount) AS MAX_AMOUNT 
FROM ORDERS


SELECT MIN(amount) AS MAX_AMOUNT 
FROM ORDERS



SELECT COUNT(*) AS TOTAL_RECORDS,
SUM(amount) AS TOTAL_AMOUNT,
AVG(amount) AS AVERAGE,
MAX(amount) AS MAXIMUM_AMOUNT,
MIN(amount) AS MINIMUM_AMOUNT
FROM orders;


SELECT c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim'


SELECT c.name,SUM(o.amount)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.name

SELECT c.name,SUM(o.amount) AS total_amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id,c.name
ORDER BY total_amount DESC;



SELECT * FROM orders;


SELECT
    c.id,
    c.name,
    COUNT(o.customer_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY c.id;



SELECT
    c.id,
    c.name,
    AVG(o.amount) AS avg_order
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id,c.name
ORDER BY avg_order DESC;



SELECT c.id,
c.name,
COUNT(o.customer_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING COUNT(O.customer_id)>2





SELECT c.id,
c.name,
AVG(o.amount) AS AVERAGE_AMOUNT
FROM customers c
LEFT JOIN
orders o
ON c.id=o.customer_id
GROUP BY c.id,c.name
HAVING AVG(o.amount)>1000
ORDER BY c.id ASC;


SELECT c.id,
c.name,
SUM(o.amount) AS total_amount
FROM customers c
LEFT JOIN 
orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING SUM(o.amount)>1000;



SELECT id,customer_id,amount 
FROM orders
WHERE amount>(SELECT AVG(amount) FROM orders)


SELECT c.id,c.name,SUM(o.amount)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING SUM(o.amount)>1000


SELECT id,customer_id,amount
FROM orders
WHERE amount=(SELECT MAX(amount) FROM orders)


SELECT id, name
FROM customers
WHERE id NOT IN (
    SELECT DISTINCT customer_id 
    FROM orders 
    WHERE customer_id IS NOT NULL
);



SELECT c.id,
       c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;


SELECT c.id, c.name, COUNT(o.id) AS total_orders
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
HAVING COUNT(o.id) > 2


SELECT id,
       name
FROM customers
WHERE id IN
(
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 2
);



SELECT id,name 
FROM customers
WHERE id IN
(
	SELECT customer_id 
	FROM orders
	GROUP BY customer_id
	HAVING SUM(amount)>1500
)






SELECT id,
	amount,
	CASE
		WHEN amount>1500 THEN 'VIP ORDER'
		WHEN amount>800 THEN 'NORMAL ORDER'
		ELSE 'LOW ORDER'
	END AS ORDER_STATUS
FROM orders


