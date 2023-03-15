---------UNION OPERATOR---INTERSECT OPERATOR----AND-----EXCEPT OPERATOR-------------------------

----UNION OPERATOR------------------

--1) It is used to join the result of 2 queries
--2) UNION Operator returns unique records. It removes the repeated records.
--3) By using UNION operator we are able to put different fields into a single field.
--4) When we put different fields into a single field, data types must be same.

create table workers
(
id char(9),
name varchar(50),
state varchar(50),
salary smallint,
company varchar(20)
);


insert into workers values(123456789, 'John Walker', 'Florida', 2500, 'IBM');
insert into workers values(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
insert into workers values(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
insert into workers values(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
insert into workers values(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
insert into workers values(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
insert into workers values(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');


select * from workers;
drop table workers;


--Find the state whose salary is greater than 3000,
--employee names less than 2000 without duplication.

select state as "state/name", salary from workers
where salary > 3000

union

select name, salary from workers
where salary < 2000;


--Find the state whose salary is greater than 3000,
--employee names less than 2000 with duplication.

select state as "state/name", salary from workers
where salary > 3000

union all --> UNION ALL does same thing with UNION but it gives repeated records.

select name, salary from workers
where salary < 2000; --Brad Pitt is two times in union all


----------INTERSECT OPERATOR---------------------


--Find all common employee names whose salary is greater than 1000 and less than 2000
select name from workers
where salary > 1000

intersect --> Returns unique common records

select name from workers
where salary < 2000;

------------EXCEPT--------------------------


--Find the employee names whose salary is less than 3000 and not working in GOOGLE
select name, salary from workers
where salary < 3000

except -->It is used to extract one query result from another query result.
       --It returns unique records.
select name, salary from workers
where company = 'GOOGLE';

























