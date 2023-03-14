CREATE TABLE my_companies
(
  company_id CHAR(3),
  company_name VARCHAR(20)
);

INSERT INTO my_companies VALUES(100, 'IBM');
INSERT INTO my_companies VALUES(101, 'GOOGLE');
INSERT INTO my_companies VALUES(102, 'MICROSOFT');
INSERT INTO my_companies VALUES(103, 'APPLE');

CREATE TABLE orders
(
  company_id CHAR(3),
  order_id CHAR(3),
  order_date DATE
);

INSERT INTO orders VALUES(101, 11, '17-Apr-2020');
INSERT INTO orders VALUES(102, 22, '18-Apr-2020');
INSERT INTO orders VALUES(103, 33, '19-Apr-2020');
INSERT INTO orders VALUES(104, 44, '20-Apr-2020');
INSERT INTO orders VALUES(105, 55, '21-Apr-2020');

--JOINS: 1) INNER JOIN: Returns common data
--		 2) LEFT JOIN: Returns all data from first table
--		 3) RIGHT JOIN: Returns all data from second table
--		 4) FULL JOIN: Returns all data from both table
--		 5) SELF JOIN: You will have a single table but you will use it as two tables




--1) INNER JOIN: Returns common data

--Select company name, order id, order date for common companies

SELECT mc.company_name, o.order_id, o.order_date
FROM my_companies mc INNER JOIN orders o
ON mc.company_id = o.company_id;

--2) LEFT JOIN: Returns all data from first table

--Get company_name, order id and order date for the companies in my_companies table

SELECT mc.company_name, o.order_id, o.order_date
FROM my_companies mc LEFT JOIN orders o
ON mc.company_id = o.company_id

-- 3) RIGHT JOIN: Returns all data from second table

--Get company_name, order id and order date for the companies in orders table

--1. Way:
SELECT mc.company_name, o.order_id, o.order_date
FROM my_companies mc RIGHT JOIN orders o
ON mc.company_id = o.company_id
ORDER BY o.order_date DESC

--2. Way:Right join is not used common, use left join by taking 2nd table as first table.
SELECT mc.company_name, o.order_id, o.order_date
FROM orders o LEFT JOIN my_companies mc
ON mc.company_id = o.company_id
ORDER BY mc.company_name ASC

--4) FULL JOIN: Returns all data from both table
--Get company_name, order id and order date from both of the tables

SELECT mc.company_name, o.order_id, o.order_date
FROM my_companies mc FULL JOIN orders o
ON mc.company_id = o.company_id

--5) SELF JOIN: You will have a single table but you will use it as two tables

CREATE TABLE workers
(
  id CHAR(2),
  name VARCHAR(20),
  title VARCHAR(60),
  manager_id CHAR(2)
);

INSERT INTO workers VALUES(1, 'Ali Can', 'SDET', 2);
INSERT INTO workers VALUES(2, 'John Walker', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'QA Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

--Create a table which displays the manager of employees

SELECT employee.name AS employee, manager.name AS manager
FROM workers employee INNER JOIN workers manager
ON employee.manager_id = manager.id

drop table workers;
















