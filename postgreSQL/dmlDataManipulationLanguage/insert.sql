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