-- ==================================================
-- QUERY 1
-- QUESTION:
-- Create a table named 'employees' containing three
-- columns: id, name, and salary.
--
-- The 'id' column should store employee identifiers,
-- 'name' should store employee names, and 'salary'
-- should store salary values with two decimal places.
--
-- PURPOSE:
-- Learn the basic structure of a PostgreSQL table and
-- understand how different data types are defined.
--
-- ERP USE CASE:
-- Employee master data is commonly stored in ERP
-- systems for payroll, attendance, HR management,
-- and reporting purposes.
-- ==================================================
CREATE TABLE employees(
	id INTEGER,
	name VARCHAR(100),
	salary NUMERIC(10,2)
);



-- ==================================================
-- QUERY 2
-- QUESTION:
-- Retrieve the username of the currently connected
-- PostgreSQL user who is executing the query.
--
-- PURPOSE:
-- Learn how to access session-level system information.
--
-- ERP USE CASE:
-- ERP applications often record which user created,
-- modified, approved, or deleted a transaction.
-- ==================================================
SELECT current_user;



-- ==================================================
-- QUERY 3
-- QUESTION:
-- Display all records and all columns from the
-- employees table.
--
-- PURPOSE:
-- Learn how to retrieve complete data from a table
-- using SELECT *.
--
-- ERP USE CASE:
-- Frequently used during testing, auditing, and
-- troubleshooting data issues.
-- ==================================================
SELECT * from employees;



-- ==================================================
-- QUERY 4
-- QUESTION:
-- Permanently remove the employees table and all
-- data stored inside it from the database.
--
-- PURPOSE:
-- Understand how to delete database objects using
-- the DROP TABLE statement.
--
-- ERP USE CASE:
-- Rarely used in production but commonly used in
-- development and testing environments.
-- ==================================================
DROP table employees;



-- ==================================================
-- QUERY 5
-- QUESTION:
-- Recreate the employees table using a SERIAL column
-- for automatic ID generation and designate it as
-- the PRIMARY KEY.
--
-- PURPOSE:
-- Learn how to create auto-incrementing identifiers
-- and enforce uniqueness using PRIMARY KEY.
--
-- ERP USE CASE:
-- Most ERP master tables use primary keys to uniquely
-- identify records such as employees, customers,
-- products, suppliers, and invoices.
-- ==================================================
CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	salary NUMERIC(10,2)
);



-- ==================================================
-- QUERY 6
-- QUESTION:
-- Retrieve all records from the newly recreated
-- employees table to confirm its structure and
-- current contents.
--
-- PURPOSE:
-- Verify table creation before inserting data.
--
-- ERP USE CASE:
-- Database administrators and developers frequently
-- validate table structures before loading data.
-- ==================================================
SELECT * from employees;



-- ==================================================
-- QUERY 7
-- QUESTION:
-- Insert a single employee named 'MILI' with a
-- salary of 35000.
--
-- Do not manually provide the ID value and allow
-- PostgreSQL to generate it automatically.
--
-- PURPOSE:
-- Learn how to insert a single record into a table.
--
-- ERP USE CASE:
-- Used when adding new employees, customers,
-- suppliers, or products into an ERP system.
-- ==================================================
INSERT INTO employees(name,salary)
VALUES('MILI',35000);



-- ==================================================
-- QUERY 8
-- QUESTION:
-- Retrieve all employee records after inserting the
-- first employee to verify that the data was stored
-- successfully.
--
-- PURPOSE:
-- Validate successful insertion and observe how the
-- SERIAL column generates values automatically.
--
-- ERP USE CASE:
-- Data verification is a standard step after master
-- data creation in ERP systems.
-- ==================================================
SELECT * FROM employees;



-- ==================================================
-- QUERY 9
-- QUESTION:
-- Insert multiple employee records in a single query.
--
-- Add employees named SHUVO, MAHIN, and MILI with
-- their respective salary values.
--
-- PURPOSE:
-- Learn efficient bulk insertion techniques instead
-- of executing separate INSERT statements.
--
-- ERP USE CASE:
-- Large ERP implementations often import thousands
-- of records using bulk insert operations.
-- ==================================================
INSERT INTO employees(name,salary)
VALUES('SHUVO',42000),
('MAHIN',27000),
('MILI',25000);



-- ==================================================
-- QUERY 10
-- QUESTION:
-- Retrieve all employee records after performing the
-- multi-row insertion.
--
-- Verify that all records have been inserted and
-- that the automatically generated IDs remain unique.
--
-- PURPOSE:
-- Confirm successful execution of bulk inserts.
--
-- ERP USE CASE:
-- Common validation step after data migration,
-- master data imports, or bulk uploads.
-- ==================================================
SELECT * FROM employees;
-- ==================================================
-- QUERY 11
-- QUESTION:
-- Update the salary of the employee whose ID is 3
-- and set the new salary amount to 31000.
--
-- After updating the record, retrieve all employee
-- data to verify that the modification was applied
-- successfully.
--
-- PURPOSE:
-- Learn how to modify a specific record using the
-- UPDATE statement and a WHERE condition.
--
-- ERP USE CASE:
-- Frequently used when processing salary revisions,
-- employee promotions, compensation adjustments,
-- or correcting incorrect master data.
-- ==================================================
UPDATE employees
SET salary=31000
WHERE id=3;

SELECT * FROM employees;



-- ==================================================
-- QUERY 12
-- QUESTION:
-- Attempt to update the salary of an employee whose
-- ID is 23 and set the salary to 30000.
--
-- Then delete all employee records where the name
-- is 'MILI' and display the remaining records.
--
-- Observe what happens when an UPDATE statement
-- targets a record that does not exist.
--
-- PURPOSE:
-- Understand how PostgreSQL behaves when no rows
-- match a WHERE condition and learn how DELETE
-- removes records based on filtering criteria.
--
-- ERP USE CASE:
-- Useful when cleaning duplicate records, removing
-- invalid master data, and understanding the impact
-- of incorrect search conditions.
-- ==================================================
UPDATE employees
SET salary=30000
WHERE id=23;

DELETE FROM employees
WHERE name='MILI';

SELECT * FROM employees;



-- ==================================================
-- QUERY 13
-- QUESTION:
-- Update the salary of employee 'SHUVO' to 60000
-- by searching with the employee name instead of
-- the primary key.
--
-- Then delete any remaining records where the name
-- is 'MILI' and display the final dataset.
--
-- PURPOSE:
-- Learn how UPDATE and DELETE operations can be
-- performed using non-key columns.
--
-- ERP USE CASE:
-- Frequently used when users search records by
-- names, codes, emails, or other business fields
-- instead of internal database IDs.
-- ==================================================
UPDATE employees
SET salary=60000
WHERE name='SHUVO';

DELETE FROM employees
WHERE name='MILI';

SELECT * FROM employees;



-- ==================================================
-- QUERY 14
-- QUESTION:
-- Create a master table named 'customers' that will
-- store customer information.
--
-- The table should contain an automatically generated
-- primary key and a customer name field.
--
-- PURPOSE:
-- Learn how to design a master data table that can
-- later be referenced by transactional tables.
--
-- ERP USE CASE:
-- Customer master tables are used throughout ERP
-- systems for sales, invoicing, receivables,
-- customer statements, and reporting.
-- ==================================================
CREATE TABLE customers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);



-- ==================================================
-- QUERY 15
-- QUESTION:
-- Create an 'orders' table to store customer order
-- transactions.
--
-- The table should contain its own primary key,
-- a customer_id field, and an amount field.
--
-- PURPOSE:
-- Learn how transactional tables are designed and
-- how they will later be linked to master tables.
--
-- ERP USE CASE:
-- Sales orders, purchase orders, invoices, receipts,
-- and journal entries are usually stored in separate
-- transactional tables.
-- ==================================================
CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	amount NUMERIC(10,2)
);



-- ==================================================
-- QUERY 16
-- QUESTION:
-- Display all records from the customers table to
-- verify that the table has been created correctly
-- and is ready to receive data.
--
-- PURPOSE:
-- Validate table creation before loading master data.
--
-- ERP USE CASE:
-- Commonly performed before customer migration,
-- imports, or integration activities.
-- ==================================================
SELECT * FROM customers;



-- ==================================================
-- QUERY 17
-- QUESTION:
-- Display all records from the orders table to verify
-- that the table structure is available and ready for
-- transaction entry.
--
-- PURPOSE:
-- Confirm successful creation of the transactional
-- table before inserting business data.
--
-- ERP USE CASE:
-- Used during ERP development, implementation,
-- testing, and database validation.
-- ==================================================
SELECT * FROM orders;



-- ==================================================
-- QUERY 18
-- QUESTION:
-- Insert twenty customer records into the customers
-- table using a single bulk INSERT statement.
--
-- Allow PostgreSQL to automatically generate the
-- primary key values for each customer.
--
-- PURPOSE:
-- Learn bulk data insertion techniques and prepare
-- realistic sample data for query practice.
--
-- ERP USE CASE:
-- Customer master data forms the foundation of sales,
-- invoicing, collections, CRM, and customer service
-- processes within ERP systems.
-- ==================================================
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



-- ==================================================
-- QUERY 19
-- QUESTION:
-- Add three additional customers to the customers
-- table and then insert multiple sales transactions
-- into the orders table.
--
-- Each order should reference a customer through
-- customer_id and contain an order amount.
--
-- Observe how one customer can have multiple orders
-- while others may have only one.
--
-- PURPOSE:
-- Learn the relationship between master data and
-- transactional data.
--
-- ERP USE CASE:
-- This mirrors real-world ERP systems where a single
-- customer can generate multiple sales orders,
-- invoices, payments, returns, and ledger entries.
-- ==================================================
INSERT INTO customers(name)
VALUES 
('ShuvrO'),
('Nibir'),
('Palash');

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



-- ==================================================
-- QUERY 20
-- QUESTION:
-- Insert a new order using customer_id 22 with an
-- order amount of 450.
--
-- Before executing the statement, verify whether
-- customer_id 22 exists in the customers table.
--
-- Observe how PostgreSQL behaves when inserting
-- related data without a FOREIGN KEY constraint.
--
-- PURPOSE:
-- Understand referential integrity issues and learn
-- why relational databases rely on FOREIGN KEY
-- constraints to maintain data consistency.
--
-- ERP USE CASE:
-- In ERP systems such as Odoo, SAP, Sage, Oracle ERP,
-- and Microsoft Dynamics, every order must belong
-- to a valid customer. Without a FOREIGN KEY,
-- orphan transactions can be created, resulting in
-- inaccurate reports and inconsistent data.
-- ==================================================
INSERT INTO orders(customer_id, amount)
VALUES
(22,450);


-- ==================================================
-- QUERY 21
-- QUESTION:
-- Insert multiple order records using customer IDs
-- 22, 23, and 34.
--
-- Verify whether all referenced customer IDs exist
-- in the customers table before inserting the data.
--
-- Observe how PostgreSQL allows transaction records
-- to be inserted when no FOREIGN KEY constraint is
-- present to enforce referential integrity.
--
-- PURPOSE:
-- Learn the impact of missing FOREIGN KEY constraints
-- and understand how orphan transaction records can
-- be created.
--
-- ERP USE CASE:
-- In ERP systems, orphan transactions can cause
-- reporting inaccuracies, reconciliation issues,
-- and data integrity problems.
-- ==================================================
INSERT INTO orders(customer_id, amount)
VALUES
(22,450),
(23,456),
(34,563);



-- ==================================================
-- QUERY 22
-- QUESTION:
-- Insert a new order record using customer_id 53
-- without providing a value for the amount column.
--
-- Observe how PostgreSQL stores missing numeric
-- values when no default value is defined.
--
-- PURPOSE:
-- Understand NULL values and how optional columns
-- behave during data insertion.
--
-- ERP USE CASE:
-- Missing transaction amounts may indicate incomplete
-- transactions, pending approvals, or data entry
-- issues requiring further investigation.
-- ==================================================
INSERT INTO orders(customer_id)
VALUES
(53);



-- ==================================================
-- QUERY 23
-- QUESTION:
-- Insert multiple order records for customer IDs
-- 54, 55, 56, and 57 without specifying an amount.
--
-- Verify that PostgreSQL stores NULL values for all
-- omitted amount fields.
--
-- PURPOSE:
-- Practice bulk insertion while intentionally
-- leaving optional fields empty.
--
-- ERP USE CASE:
-- Useful when importing incomplete transactional
-- data from external systems for later completion.
-- ==================================================
INSERT INTO orders(customer_id)
VALUES
(54),
(55),
(56),
(57);



-- ==================================================
-- QUERY 24
-- QUESTION:
-- Display all records from the orders table after
-- completing all previous insert operations.
--
-- Review valid records, orphan customer references,
-- duplicate customers, and NULL amount values.
--
-- PURPOSE:
-- Perform a complete audit of transactional data
-- before beginning relational analysis.
--
-- ERP USE CASE:
-- Commonly used by analysts before building reports,
-- dashboards, and financial summaries.
-- ==================================================
SELECT * FROM orders;



-- ==================================================
-- QUERY 25
-- QUESTION:
-- Compare the results of INNER JOIN and LEFT JOIN
-- between customers and orders.
--
-- First, display only matching records using
-- INNER JOIN.
--
-- Then, display all customers regardless of whether
-- they have orders using LEFT JOIN.
--
-- Finally, display only customer-order records where
-- the order amount exceeds 1000.
--
-- PURPOSE:
-- Understand how different join types affect the
-- final dataset.
--
-- ERP USE CASE:
-- Essential for customer activity reports, sales
-- analysis, and identifying inactive customers.
-- ==================================================
SELECT c.id,c.name,o.amount 
FROM customers c
INNER JOIN orders o
ON c.id=o.customer_id;


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id;


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>1000;



-- ==================================================
-- QUERY 26
-- QUESTION:
-- Retrieve customer order information using
-- different filtering conditions.
--
-- First, locate customer records for Rahim.
--
-- Second, locate customer information using ID 13.
--
-- Third, retrieve orders whose amounts fall between
-- 500 and 1500.
--
-- PURPOSE:
-- Practice filtering data using text values,
-- primary keys, and numeric ranges.
--
-- ERP USE CASE:
-- Frequently used in customer service, auditing,
-- and transaction investigation tasks.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.id=13;


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>500 AND o.amount<1500;



-- ==================================================
-- QUERY 27
-- QUESTION:
-- Retrieve all orders belonging to customer Rahim
-- where the order amount is greater than 400.
--
-- Apply both conditions simultaneously using the
-- AND operator.
--
-- PURPOSE:
-- Learn how multiple filtering conditions work
-- together in a single query.
--
-- ERP USE CASE:
-- Useful for identifying customer-specific high
-- value transactions.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' AND o.amount>400;



-- ==================================================
-- QUERY 28
-- QUESTION:
-- Search customer records using both exact matching
-- and pattern matching techniques.
--
-- Find customers named Rahim, Sadia, or Nibir.
--
-- Find names starting with 'S'.
--
-- Find names ending with 'a'.
--
-- Find names containing 'ni' or 'he'.
--
-- Also review customer records where order amounts
-- exceed 1000.
--
-- PURPOSE:
-- Master the use of OR, LIKE, and wildcard (%) based
-- search operations.
--
-- ERP USE CASE:
-- Frequently used in customer search screens,
-- CRM systems, and reporting filters.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' OR c.name='Sadia' OR c.name='Nibir';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE 'S%';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%a';

SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%ni%' OR c.name LIKE '%he%';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>1000;



-- ==================================================
-- QUERY 29
-- QUESTION:
-- Re-run customer and order filtering queries using
-- customer names, customer IDs, and order amount
-- ranges to verify consistency of previous results.
--
-- PURPOSE:
-- Reinforce understanding of filtering logic and
-- validate expected query outputs.
--
-- ERP USE CASE:
-- Common during report testing, reconciliation,
-- and quality assurance activities.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.id=13;


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.amount>500 AND o.amount<1500;



-- ==================================================
-- QUERY 30
-- QUESTION:
-- Display orders belonging to customer Rahim where
-- the transaction amount is greater than 400.
--
-- Verify that both the customer condition and amount
-- condition are satisfied before records are returned.
--
-- PURPOSE:
-- Strengthen understanding of compound filtering
-- using multiple business rules.
--
-- ERP USE CASE:
-- Frequently used in customer-specific sales,
-- collection, and transaction reviews.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' AND o.amount>400;
-- ==================================================
-- QUERY 31
-- QUESTION:
-- Search customer records using exact matching and
-- pattern matching techniques.
--
-- Retrieve customers named Rahim, Sadia, or Nibir.
-- Find customers whose names start with 'S'.
-- Find customers whose names end with 'a'.
--
-- Finally, sort all customer-order records in
-- ascending order based on transaction amount.
--
-- PURPOSE:
-- Learn how text searching and sorting can be
-- combined to organize business data effectively.
--
-- ERP USE CASE:
-- Frequently used in customer search screens,
-- CRM modules, and operational reports.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim' OR c.name='Sadia' OR c.name='Nibir';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE 'S%';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name LIKE '%a';


SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount ASC;



-- ==================================================
-- QUERY 32
-- QUESTION:
-- Display customer-order records sorted by amount
-- in descending order.
--
-- Then retrieve only the top 4 highest transaction
-- values using the LIMIT clause.
--
-- PURPOSE:
-- Learn ranking and result restriction techniques.
--
-- ERP USE CASE:
-- Used for top customers, highest sales orders,
-- largest invoices, and management dashboards.
-- ==================================================
SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount DESC;



SELECT c.id,c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
ORDER BY o.amount DESC
LIMIT 4;



-- ==================================================
-- QUERY 33
-- QUESTION:
-- Count the total number of records returned by the
-- customer-orders LEFT JOIN.
--
-- Then count the total number of customers stored
-- in the customers table.
--
-- Compare the two results and understand how a
-- one-to-many relationship increases row counts.
--
-- PURPOSE:
-- Learn how joins affect record volume.
--
-- ERP USE CASE:
-- Useful for auditing, reconciliation, and report
-- validation processes.
-- ==================================================
SELECT COUNT(*)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id;


SELECT COUNT(*) FROM customers;



-- ==================================================
-- QUERY 34
-- QUESTION:
-- Calculate the total sales amount from all orders.
--
-- Then calculate the total sales amount only for
-- transactions greater than 1500.
--
-- PURPOSE:
-- Learn how to use SUM() with and without filtering.
--
-- ERP USE CASE:
-- Commonly used in revenue reports, sales analysis,
-- and management summaries.
-- ==================================================
SELECT SUM(amount) AS TOTAL_AMOUNT 
FROM ORDERS;


SELECT SUM(amount) AS TOTAL_AMOUNT 
FROM ORDERS
WHERE amount>1500;



-- ==================================================
-- QUERY 35
-- QUESTION:
-- Display the individual order amounts that are
-- greater than 1500.
--
-- Verify which records contributed to the total
-- calculated in the previous query.
--
-- PURPOSE:
-- Learn how to validate aggregate results by
-- examining underlying transaction records.
--
-- ERP USE CASE:
-- Frequently used during auditing and financial
-- verification activities.
-- ==================================================
SELECT amount  
FROM ORDERS
WHERE amount>1500;



-- ==================================================
-- QUERY 36
-- QUESTION:
-- Calculate the average transaction amount across
-- all orders.
--
-- Then calculate the average amount only for orders
-- greater than 1500.
--
-- PURPOSE:
-- Learn how AVG() helps identify transaction trends
-- and average customer spending behavior.
--
-- ERP USE CASE:
-- Used in sales analysis, customer analytics,
-- and financial performance reporting.
-- ==================================================
SELECT AVG(amount) AS TOTAL_AMOUNT 
FROM ORDERS;


SELECT AVG(amount) AS AVERAGE
FROM ORDERS
WHERE amount>1500;



-- ==================================================
-- QUERY 37
-- QUESTION:
-- Find the highest transaction amount.
--
-- Find the lowest transaction amount.
--
-- Then create a summary report displaying:
-- Total Records
-- Total Amount
-- Average Amount
-- Maximum Amount
-- Minimum Amount
--
-- PURPOSE:
-- Practice all major aggregate functions together.
--
-- ERP USE CASE:
-- Commonly used in executive dashboards and KPI
-- reporting systems.
-- ==================================================
SELECT MAX(amount) AS MAX_AMOUNT 
FROM ORDERS;


SELECT MIN(amount) AS MAX_AMOUNT 
FROM ORDERS;



SELECT COUNT(*) AS TOTAL_RECORDS,
SUM(amount) AS TOTAL_AMOUNT,
AVG(amount) AS AVERAGE,
MAX(amount) AS MAXIMUM_AMOUNT,
MIN(amount) AS MINIMUM_AMOUNT
FROM orders;



-- ==================================================
-- QUERY 38
-- QUESTION:
-- Display all order transactions for customer Rahim.
--
-- Then calculate total sales grouped by customer
-- name.
--
-- Finally, calculate total sales grouped by both
-- customer ID and customer name and sort customers
-- from highest spending to lowest spending.
--
-- PURPOSE:
-- Learn how GROUP BY consolidates transactional
-- records into meaningful business summaries.
--
-- ERP USE CASE:
-- Used in customer profitability analysis, sales
-- reporting, and customer ranking reports.
-- ==================================================
SELECT c.name,o.amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE c.name='Rahim';


SELECT c.name,SUM(o.amount)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.name;


SELECT c.name,SUM(o.amount) AS total_amount
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id,c.name
ORDER BY total_amount DESC;



-- ==================================================
-- QUERY 39
-- QUESTION:
-- Display all records from the orders table.
--
-- Compare the raw transaction data against the
-- aggregated reports generated in previous queries.
--
-- PURPOSE:
-- Validate summary calculations using source data.
--
-- ERP USE CASE:
-- Frequently used during report verification,
-- troubleshooting, and financial audits.
-- ==================================================
SELECT * FROM orders;



-- ==================================================
-- QUERY 40
-- QUESTION:
-- Count the total number of orders placed by each
-- customer.
--
-- Group the results by customer ID and customer name
-- and display the final output in customer ID order.
--
-- PURPOSE:
-- Learn how COUNT() works with GROUP BY to measure
-- transaction frequency.
--
-- ERP USE CASE:
-- Used to identify active customers, measure buying
-- frequency, and generate customer activity reports.
-- ==================================================
SELECT
    c.id,
    c.name,
    COUNT(o.customer_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY c.id;

-- ==================================================
-- QUERY 41
-- QUESTION:
-- Calculate the average order amount for each customer.
--
-- Group all orders by customer and determine the
-- average transaction value per customer.
--
-- Sort the results from highest average spender to
-- lowest average spender.
--
-- PURPOSE:
-- Learn how AVG() works with GROUP BY and ORDER BY.
--
-- ERP USE CASE:
-- Used to identify customers who regularly place
-- high-value orders.
-- ==================================================
SELECT
    c.id,
    c.name,
    AVG(o.amount) AS avg_order
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.id,c.name
ORDER BY avg_order DESC;



-- ==================================================
-- QUERY 42
-- QUESTION:
-- Find customers who have placed more than 2 orders.
--
-- Then find customers whose average order amount
-- exceeds 1000.
--
-- PURPOSE:
-- Learn how HAVING filters grouped data after
-- aggregation.
--
-- ERP USE CASE:
-- Used to identify highly active customers and
-- customers with strong purchasing power.
-- ==================================================
SELECT c.id,
c.name,
COUNT(o.customer_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING COUNT(O.customer_id)>2;





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



-- ==================================================
-- QUERY 43
-- QUESTION:
-- Calculate total spending for each customer.
--
-- Display only those customers whose total spending
-- exceeds 1000.
--
-- PURPOSE:
-- Learn how SUM() can be used with HAVING for
-- group-level filtering.
--
-- ERP USE CASE:
-- Useful for customer ranking, loyalty programs,
-- and revenue analysis.
-- ==================================================
SELECT c.id,
c.name,
SUM(o.amount) AS total_amount
FROM customers c
LEFT JOIN 
orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING SUM(o.amount)>1000;



-- ==================================================
-- QUERY 44
-- QUESTION:
-- Practice different types of subqueries.
--
-- 1. Find orders larger than the overall average.
-- 2. Find customers whose total spending exceeds
--    1000.
-- 3. Find the highest-value order in the system.
-- 4. Find customers who never placed an order.
--
-- PURPOSE:
-- Learn scalar subqueries, aggregate subqueries,
-- and list-based subqueries.
--
-- ERP USE CASE:
-- Frequently used in management reports and
-- business intelligence queries.
-- ==================================================
SELECT id,customer_id,amount 
FROM orders
WHERE amount>(SELECT AVG(amount) FROM orders);


SELECT c.id,c.name,SUM(o.amount)
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id
HAVING SUM(o.amount)>1000;


SELECT id,customer_id,amount
FROM orders
WHERE amount=(SELECT MAX(amount) FROM orders);


SELECT id, name
FROM customers
WHERE id NOT IN (
    SELECT DISTINCT customer_id 
    FROM orders 
    WHERE customer_id IS NOT NULL
);



-- ==================================================
-- QUERY 45
-- QUESTION:
-- Display customers who do not have any matching
-- order records.
--
-- Use LEFT JOIN and identify rows where the order
-- side returns NULL.
--
-- PURPOSE:
-- Learn how to detect unmatched records in
-- relational databases.
--
-- ERP USE CASE:
-- Used to identify inactive customers.
-- ==================================================
SELECT c.id,
       c.name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;



-- ==================================================
-- QUERY 46
-- QUESTION:
-- Find customers who have placed more than
-- 2 orders.
--
-- First solve the problem using INNER JOIN.
--
-- Then solve the same problem using a subquery
-- with IN().
--
-- PURPOSE:
-- Compare multiple approaches for solving the
-- same business problem.
--
-- ERP USE CASE:
-- Helpful when optimizing reports and queries.
-- ==================================================
SELECT c.id, c.name, COUNT(o.id) AS total_orders
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
HAVING COUNT(o.id) > 2;


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



-- ==================================================
-- QUERY 47
-- QUESTION:
-- Find customers whose total spending exceeds 1500.
--
-- Then classify each order into:
-- VIP ORDER
-- NORMAL ORDER
-- LOW ORDER
--
-- based on the order amount.
--
-- PURPOSE:
-- Learn how CASE expressions can convert numeric
-- values into meaningful business categories.
--
-- ERP USE CASE:
-- Used in customer segmentation and transaction
-- classification reports.
-- ==================================================
SELECT id,name 
FROM customers
WHERE id IN
(
	SELECT customer_id 
	FROM orders
	GROUP BY customer_id
	HAVING SUM(amount)>1500
);




SELECT id,
	amount,
	CASE
		WHEN amount>1500 THEN 'VIP ORDER'
		WHEN amount>800 THEN 'NORMAL ORDER'
		ELSE 'LOW ORDER'
	END AS ORDER_STATUS
FROM orders;



SELECT * FROM orders;



-- ==================================================
-- QUERY 48
-- QUESTION:
-- Display order amounts while replacing NULL values
-- with 0 using COALESCE().
--
-- PURPOSE:
-- Learn how to handle missing values safely.
--
-- ERP USE CASE:
-- Prevents NULL values from causing reporting
-- errors and calculation issues.
-- ==================================================
SELECT id,customer_id,
	COALESCE(amount,0) AS SAFE_AMOUNT
FROM orders;

-- ==================================================
-- QUERY 49
-- QUESTION:
-- Display all order records and replace NULL amounts
-- with 0 using COALESCE().
--
-- Then classify each order as:
-- VIP ORDER
-- NORMAL ORDER
-- LOW ORDER
--
-- based on the sanitized amount value.
--
-- PURPOSE:
-- Learn how to combine COALESCE() and CASE WHEN
-- to safely classify records even when NULL values
-- exist.
--
-- ERP USE CASE:
-- Used in dashboards and reports where missing
-- values must still be categorized correctly.
-- ==================================================
SELECT customer_id,
	COALESCE(amount,0) AS amount,
	CASE
		WHEN COALESCE(amount,0)>1500 THEN 'VIP ORDER'
		WHEN COALESCE(amount,0)>800 THEN 'NORMAL ORDER'
		ELSE 'LOW ORDER'
	END AS ORDER_STATUS
FROM orders;



-- ==================================================
-- QUERY 50
-- QUESTION:
-- Calculate total spending for every customer.
--
-- Replace NULL totals with 0 using COALESCE().
--
-- Then classify customers as:
-- GOLD CUSTOMER
-- SILVER CUSTOMER
-- BRONZE CUSTOMER
--
-- according to their total purchase value.
--
-- PURPOSE:
-- Learn how to combine GROUP BY, SUM(), COALESCE(),
-- and CASE WHEN in a single business report.
--
-- ERP USE CASE:
-- Used in loyalty programs, CRM systems, and
-- customer segmentation reports.
-- ==================================================
SELECT 
	c.name,
	c.id,
	COALESCE(SUM(o.amount),0) AS total_amount,
	CASE
		WHEN COALESCE(SUM(o.amount),0)>2000 THEN 'GOLD CUSTOMER'
		WHEN COALESCE(SUM(o.amount),0)>1000 THEN 'SILVER CUSTOMER'
		ELSE 'BRONZE CUSTOMER'
	END AS CUSTOMER_TYPE
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id,c.name;



-- ==================================================
-- QUERY 51
-- QUESTION:
-- Calculate the total order amount for each customer.
--
-- Classify customers into:
-- HIGH
-- MEDIUM
-- LOW
--
-- based on their total accumulated order value.
--
-- Display the final result ordered by customer ID.
--
-- PURPOSE:
-- Learn how to summarize and categorize grouped
-- transactional data.
--
-- ERP USE CASE:
-- Used in customer performance analysis and
-- sales segmentation reports.
-- ==================================================
SELECT customer_id,
	COALESCE(SUM(o.amount),0) AS total_amount,
	CASE
		WHEN COALESCE(SUM(o.amount),0)>1500 THEN 'HIGH'
		WHEN COALESCE(SUM(o.amount),0)>800 THEN 'MEDIUM'
		ELSE 'LOW'

	END AS ORDER_STATUS
FROM orders o
GROUP BY customer_id
ORDER BY customer_id ASC;



-- ==================================================
-- QUERY 52
-- QUESTION:
-- Practice CASE WHEN classification across multiple
-- business scenarios.
--
-- 1. Classify individual orders as HIGH, MEDIUM,
--    or LOW.
--
-- 2. Classify employees into grades A, B, and C
--    based on salary.
--
-- 3. Classify customers as GOLD, SILVER, or BRONZE
--    based on total spending.
--
-- PURPOSE:
-- Master conditional reporting using CASE WHEN.
--
-- ERP USE CASE:
-- Widely used in reporting, performance evaluation,
-- customer segmentation, and business analytics.
-- ==================================================
SELECT customer_id,
	COALESCE(amount,0) AS total_amount,
	CASE
		WHEN COALESCE(amount,0)>1500 THEN 'HIGH'
		WHEN COALESCE(amount,0)>800 THEN 'MEDIUM'
		ELSE 'LOW'

	END AS ORDER_STATUS
FROM orders;



SELECT * FROM employees;


SELECT name,salary,
	CASE
		WHEN COALESCE(salary,0)>=50000 THEN 'A'
		WHEN COALESCE(salary,0)>=30000 THEN 'B'
		ELSE 'C'
	END AS grade
FROM employees;



SELECT 
	c.name,
	c.id,
	COALESCE(SUM(o.amount),0) AS total_amount,
	CASE
		WHEN COALESCE(SUM(o.amount),0)>2000 THEN 'GOLD'
		WHEN COALESCE(SUM(o.amount),0)>1000 THEN 'SILVER'
		ELSE 'BRONZE'
	END AS CUSTOMER_TYPE
FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
GROUP BY c.id,c.name;



-- ==================================================
-- QUERY 53
-- QUESTION:
-- Display only those customers who have placed
-- at least one order.
--
-- Use a correlated subquery with EXISTS().
--
-- PURPOSE:
-- Learn how EXISTS checks whether matching records
-- are present in another table.
--
-- ERP USE CASE:
-- Used to identify active customers and generate
-- customer activity reports.
-- ==================================================
SELECT
    c.id,
    c.name
FROM customers c
WHERE EXISTS (
    SELECT *
    FROM orders o
    WHERE o.customer_id = c.id
);



-- ==================================================
-- QUERY 54
-- QUESTION:
-- Display customers who have never placed an order.
--
-- Use NOT EXISTS() to locate customers without
-- matching transaction records.
--
-- PURPOSE:
-- Learn how to identify missing relationships
-- using NOT EXISTS.
--
-- ERP USE CASE:
-- Used for inactive customer analysis, marketing
-- campaigns, and customer re-engagement programs.
-- ==================================================
SELECT
    c.id,
    c.name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
);



-- ==================================================
-- QUERY 55
-- QUESTION:
-- Display all customers who have at least one
-- matching order using EXISTS().
--
-- Then display the complete customer table and
-- compare both outputs.
--
-- PURPOSE:
-- Understand how EXISTS filters records compared
-- to a normal table query.
--
-- ERP USE CASE:
-- Useful for validating active customer reports.
-- ==================================================
SELECT c.id,c.name
FROM customers c
WHERE EXISTS(
	SELECT 1 
	FROM orders o
	WHERE c.id=o.customer_id
);


SELECT * FROM customers;



-- ==================================================
-- QUERY 56
-- QUESTION:
-- Display only those customers whose total order
-- amount exceeds 1500.
--
-- Use a correlated EXISTS() subquery combined with
-- GROUP BY and HAVING.
--
-- PURPOSE:
-- Learn advanced EXISTS() techniques with aggregate
-- filtering.
--
-- ERP USE CASE:
-- Used for identifying premium customers and
-- generating high-value customer reports.
-- ==================================================
SELECT c.id,c.name
FROM customers c
WHERE EXISTS(
	SELECT 1
	FROM orders o
	WHERE c.id=o.customer_id
	GROUP BY o.customer_id
	HAVING SUM(o.amount)>1500
);

-- =========================================================
-- QUERY 57
-- QUESTION:
-- Show the current system date.
--
-- TOPIC:
-- CURRENT_DATE
--
-- ERP USE CASE:
-- Used in invoice reports, attendance reports,
-- payroll reports and due date calculations.
-- =========================================================

SELECT current_date;



-- =========================================================
-- QUERY 58
-- QUESTION:
-- Show the current system date and time.
--
-- TOPIC:
-- CURRENT_TIMESTAMP
--
-- ERP USE CASE:
-- Used for audit logs, created datetime,
-- updated datetime and transaction tracking.
-- =========================================================

SELECT current_timestamp;



-- =========================================================
-- QUERY 59
-- QUESTION:
-- Show the current system date and time using NOW().
--
-- TOPIC:
-- NOW()
--
-- ERP USE CASE:
-- Shortcut of CURRENT_TIMESTAMP.
-- Frequently used in ERP systems.
-- =========================================================

SELECT NOW();



-- =========================================================
-- QUERY 60
-- QUESTION:
-- Create an invoices table to store invoice information.
--
-- TOPIC:
-- CREATE TABLE
--
-- ERP USE CASE:
-- Stores customer invoice records.
-- =========================================================

CREATE TABLE invoices(
	id SERIAL PRIMARY KEY,
	customar_name VARCHAR(100),
	invoice_date DATE,
	amount NUMERIC(10,2)
);



-- =========================================================
-- QUERY 61
-- QUESTION:
-- Insert sample invoice records into invoices table.
--
-- TOPIC:
-- INSERT
--
-- ERP USE CASE:
-- Simulates invoice transactions.
-- =========================================================

INSERT INTO invoices(customar_name,invoice_date,amount)
VALUES
('Rahim','2026-01-15',5000),
('Karim','2026-02-20',8000),
('Salma','2026-03-10',12000),
('Rafi','2026-04-05',6000),
('Nusrat','2026-05-01',15000);



-- =========================================================
-- QUERY 62
-- QUESTION:
-- Show invoice year for each invoice.
--
-- TOPIC:
-- EXTRACT(YEAR)
--
-- ERP USE CASE:
-- Used in yearly sales reports.
-- =========================================================

SELECT 
	customar_name,
	EXTRACT(YEAR FROM invoice_date) AS YEAR
FROM invoices;



-- =========================================================
-- QUERY 63
-- QUESTION:
-- Show invoice month number for each invoice.
--
-- TOPIC:
-- EXTRACT(MONTH)
--
-- ERP USE CASE:
-- Used in monthly sales and collection reports.
-- =========================================================

SELECT 
	customar_name,
	EXTRACT(MONTH FROM invoice_date) AS MONTH
FROM invoices;



-- =========================================================
-- QUERY 64
-- QUESTION:
-- Convert invoice month number into month name.
--
-- TOPIC:
-- CASE WHEN + EXTRACT(MONTH)
--
-- ERP USE CASE:
-- Generates user-friendly reports.
-- =========================================================

SELECT 
	customar_name,
	CASE
		WHEN EXTRACT(MONTH FROM invoice_date)=1 THEN 'JANUARY'
		WHEN EXTRACT(MONTH FROM invoice_date)=2 THEN 'FEBRUARY'
		WHEN EXTRACT(MONTH FROM invoice_date)=3 THEN 'MARCH'
		WHEN EXTRACT(MONTH FROM invoice_date)=4 THEN 'APRIL'
		WHEN EXTRACT(MONTH FROM invoice_date)=5 THEN 'MAY'
		WHEN EXTRACT(MONTH FROM invoice_date)=6 THEN 'JUNE'
		WHEN EXTRACT(MONTH FROM invoice_date)=7 THEN 'JULY'
		WHEN EXTRACT(MONTH FROM invoice_date)=8 THEN 'AUGST'
		WHEN EXTRACT(MONTH FROM invoice_date)=9 THEN 'SEPTEMBER'
		WHEN EXTRACT(MONTH FROM invoice_date)=10 THEN 'OCTOBER'
		WHEN EXTRACT(MONTH FROM invoice_date)=11 THEN 'NOBEMBER'
		ELSE 'DECEMBER'
	END AS INVOICE_MONTH
FROM invoices;



-- =========================================================
-- QUERY 65
-- QUESTION:
-- Show invoice day from invoice date.
--
-- TOPIC:
-- EXTRACT(DAY)
--
-- ERP USE CASE:
-- Used in daily invoice reports.
-- =========================================================

SELECT 
	customar_name,
	EXTRACT(DAY FROM invoice_date) AS days
FROM invoices;



-- =========================================================
-- QUERY 66
-- QUESTION:
-- Show the age of each invoice compared to today.
--
-- TOPIC:
-- AGE()
--
-- ERP USE CASE:
-- Invoice aging report.
-- =========================================================

SELECT 
	customar_name,
	AGE(CURRENT_DATE,invoice_date) AS days
FROM invoices;



-- =========================================================
-- QUERY 67
-- QUESTION:
-- Calculate invoice age in total days.
--
-- TOPIC:
-- DATE DIFFERENCE
--
-- ERP USE CASE:
-- Used in overdue invoice tracking.
-- =========================================================

SELECT
    customar_name,
    invoice_date,
    CURRENT_DATE - invoice_date AS days_old
FROM invoices;



-- =========================================================
-- QUERY 68
-- QUESTION:
-- Show invoices from year 2026.
--
-- TOPIC:
-- YEAR FILTERING
--
-- ERP USE CASE:
-- Yearly sales report.
-- =========================================================

SELECT 
	*,
	EXTRACT(YEAR FROM invoice_date) AS year
FROM invoices
WHERE EXTRACT(YEAR FROM invoice_date)=2026;



-- =========================================================
-- QUERY 69
-- QUESTION:
-- Show invoices between January and December 2026.
--
-- TOPIC:
-- BETWEEN
--
-- ERP USE CASE:
-- Financial year reporting.
-- =========================================================

SELECT *
FROM invoices
WHERE invoice_date BETWEEN '2026-01-01'
                      AND '2026-12-31';



-- =========================================================
-- QUERY 70
-- QUESTION:
-- Show invoices generated in March 2026.
--
-- TOPIC:
-- DATE RANGE FILTERING
--
-- ERP USE CASE:
-- Monthly sales report.
-- =========================================================

SELECT * FROM invoices
WHERE invoice_date BETWEEN '2026-03-01' AND '2026-03-31';



-- =========================================================
-- QUERY 71
-- QUESTION:
-- Show invoices where invoice month is March.
--
-- TOPIC:
-- EXTRACT(MONTH) FILTERING
--
-- ERP USE CASE:
-- Monthly invoice analysis.
-- =========================================================

SELECT * FROM invoices
WHERE EXTRACT(MONTH FROM invoice_date)=3;



-- =========================================================
-- QUERY 72
-- QUESTION:
-- Show invoices where amount is greater than 7000
-- and invoice month is February or later.
--
-- TOPIC:
-- DATE FILTERING + AMOUNT FILTERING
--
-- ERP USE CASE:
-- High value customer invoice analysis.
-- =========================================================

SELECT * FROM invoices
WHERE EXTRACT(MONTH FROM invoice_date)>=2 AND amount>7000;



-- =========================================================
-- QUERY 73
-- QUESTION:
-- Show invoices after 1 February 2026
-- where amount is greater than 7000.
--
-- TOPIC:
-- DATE FILTERING
--
-- ERP USE CASE:
-- Find high value invoices after a specific date.
-- =========================================================

SELECT * FROM Invoices
WHERE invoice_date >='2026-02-01' AND amount>7000;