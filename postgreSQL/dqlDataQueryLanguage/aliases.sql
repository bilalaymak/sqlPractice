
------------------ALIASES---------------------------

create table employees
(
employeeId char(9),
employeeFirstName varchar(20),
employeeLastName varchar(20)
);
drop table employees;

insert into employees values (14, 'Chris', 'Tae');
insert into employees values (11, 'John', 'Walker');
insert into employees values (12, 'Amy', 'Star');
insert into employees values (13, 'Brad', 'Pitt');
insert into employees values (15, 'Chris', 'Way');

select * from employees;
select * from addresses;

create table  addresses
(
employeeId char(9),
street varchar(20),
city varchar(20),
state char(2),
zipCode char(5)
);

insert into addresses values (11, '32nd Star 1234', 'Miami', 'FL', '33018');
insert into addresses values (12, '23rd Rain 567', 'Jacksonville', 'FL', '32256');
insert into addresses values (13, '5th Snow 765', 'Hialeah', 'VA', '20121');
insert into addresses values (14, '3rd Man 12', 'Weston', 'MI', '12345');
insert into addresses values (15, '11th Chris 12', 'St. Johns', 'FL', '32259');


--How to put aliases for table names
--1)Select employee_first_name and state, for employee first name use "firstname"
--as field name and for state use "employee state" as field name

select e.employeeFirstName as firstName, a.state as "employee state"
from employees e, addresses a
where e.employeeId = a.employeeId;

--How to put multiple fields into a single field and use aliases for the field

--2)Get employeeId use "id" as field name, get firstName and lastName put them into the same field
--and use "full_name" as field name

select employeeId as id, employeeFirstName || ' ' || employeeLastName as fullName
from employees;






















