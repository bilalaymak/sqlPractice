--ALTER TABLE
--The Alter Table statement is used to add, delete or modify columns in an existing table.
--The Alter Table statement is used to add and drop constarints in an existing table.

--1) We can add a column to an existing table
ALTER TABLE workers
ADD company_industry VARCHAR(20);

--2) How to add a field with default value
ALTER TABLE workers
ADD worker_address VARCHAR(100) DEFAULT 'Miami, FL, USA';

--3) How to add multiple fields into a table
ALTER TABLE workers
ADD number_of_workers SMALLINT DEFAULT 0,
ADD name_of_ceo VARCHAR(20);

--4)How to drop fields from a table
ALTER TABLE workers
DROP COLUMN name_of_ceo;

--5)How to rename a field/column
ALTER TABLE workers
RENAME COLUMN company_industry TO company_profession;

--6)How to rename table
ALTER TABLE workers
RENAME TO employees;

--7)How to modify(Add constraints, change data type, change the size) a field

--Note: Be careful about the existing data when you add a constraint into a field.

--a) How to add constraint
--Add "NOT NULL" constraint to number_of_workers field
ALTER TABLE employees
ALTER COLUMN number_of_workers SET NOT NULL;

--Add "UNIQUE" constraint to company_profession field
ALTER TABLE employees
ADD CONSTRAINT company_profession_unique UNIQUE(company_profession);--Unique constraint can accept duplicated null.
select * from employees;
--Add "UNIQUE" constraint to worker_address field
ALTER TABLE employees
ADD CONSTRAINT worker_address_unique UNIQUE(worker_address);--Unique constraint can not accept duplicated data.


--b) How to change data size/type of a field
--Note: Be careful about existing data size when you change the data size of a field

--Change the data type of the company_profession field to CHAR(5)
ALTER TABLE employees
ALTER COLUMN company_profession TYPE CHAR(5);

--Change the data type of the worker_address field to CHAR(5)
-- ALTER TABLE employees
-- ALTER COLUMN worker_address TYPE CHAR(5);--value too long for type character(5)==> You can not decrease column length because some values are greater than 5 chars.

--Change the data type of the worker_address field to CHAR(30)
ALTER TABLE employees
ALTER COLUMN worker_address TYPE CHAR(30);

SELECT * FROM employees;