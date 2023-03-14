create table students
(
    studentId smallint primary key,
    studentName varchar(50) unique,
	studentAge smallint not null,
	studentDob date

	constraint studentAge_check check(studentAge between 15 and 20)
	--15 and 20 are inclusive
	constraint studentNameUpperCase check(studentName = upper(studentName))
);

--1. way: insert data for all fields

insert into students values(100,'ALI CAN', 16, '10-Aug-2007');
insert into students values('101', 'VELI HAN', 20, '01-Jan-2003');

--For integer we do not use single quotes but if you use it will work as well
insert into students values(102, 'AYSE TAN', 15, '29-Feb-2008');

--For varchar and date we have to use single quotes
insert into students values(103, 'JOHN DOE', 19, '22-05-2004');
insert into students values(107, 'TOM JONNY', 18, '22-05-2005');

--2. Way: How to insert data for specific field

insert into students(studentName,studentage,studentid) values('MARK TWAIN', 16, 104);
insert into students(studentName,studentage,studentid) values('MARY STAR', 17, 105);
insert into students(studentage,studentid) values(20,106);
--UNIQUE constraint can not have duplicate values but it can have duplicate 'null'
insert into students(studentage,studentid)values(20,108);

--how to update existing data
update students
set studentName = 'LEO OCEAN'
where studentId = 106;

--Update the dob of Ali to 11-Dec-1997
update students
set studentDob = '11-Dec-1997'
where studentName = 'ALI CAN';

--How to update multiple cell
--Update the dob of 105 to 11-Apr-2006 and name to 'TOM HANKS'
update students
set studentDob = '11-Apr-2006',
StudentName = 'TOM HANKS'
where studentId = 105;

--How to update multiple records(rows)
--Make the dob of all students 01-Aug-2021 if their ids are less than 104

update students
set studentDob = '01-Aug-2021'
where studentId < 104;

--Select maximum age from students table
select max(studentAge) from students;


--Select minimum age from students table
select min(studentAge) from students;

--Select average id from students table
select avg(studentAge) from students;

--Update all students's age to the maximum age
update students
set studentAge = (select max(studentAge) from students);

--Update all students' dob to the minimum dob

update students
set studentDob = (select min(studentDob) from students);


-----------------------------------------------------------------------

create table workers
(
workerId smallint,
workerName varchar(50),
workerSalary smallint,
constraint workerId_pk primary key(workerId)
);

insert into workers values(101, 'Ali Can', 10000);
insert into workers values(102, 'Veli Han', 2000);
insert into workers values(103, 'Ayse Kan', 7000);
insert into workers values(104, 'Angie Ocean', 8500);

--Increase the salary of Veli Han to 20 percent less than the highest salary
update workers
set workerSalary = (select max(workerSalary) * 0.8 from workers)
where workerName = 'Veli Han';

--Decrease the salary of Ali Can to 30 percent more than the lowest salary
update workers
set workerSalary = (select min(workerSalary) * 1.3 from workers)
where workerName = 'Ali Can';

--Increase the salaries by 1000 if the salaries are less then the average salary
update workers
set workerSalary = workerSalary + 1000
where workerSalary < (select avg(workerSalary) from workers);

-----------------------------------------
--IS NULL

create table people
(
ssn int,
name varchar(50),
address varchar(80)
);
















select * from workers;
drop table students, workers;