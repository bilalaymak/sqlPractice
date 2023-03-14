--How to create table

--1. Way: Create table from scratch

create table students
(
    studentId smallint,
    studentName varchar(50),
    studentAge smallint,
    studentDob date
);

--2. Way: Create table by using another table
create table studentNameAge
as select studentName,studentAge from students;

select * from students;

---------------CONSTRAINTS------------------------

--While we create a table, we can put some "Constraints" for fields
--Constraints:
--a) Unique
--b) Not Null
--c) Primary Key
--d) Foreign Key
--e) Check Constraint

--There are 2 ways to create Primary Key

--1. Way to create Primary Key:

create table students
(
studentId smallint primary key,
--student_id field can not have duplicate and null value. Because it is primary key.
studentName varchar(50) not null,--student_name field can not have null value
studentAge smallint,
studentDob date unique  --student_dob fiels can not have dublicate value
);

--2. Way to create Primary Key
create table students
(
studentId smallint,
studentName varchar(50),
studentAge smallint,
studentDob date,

constraint studentId_pk primary key(studentId)
);

--How to add "Foreign Key" Constraint

create table parents
(
studentId smallint,
studentName varchar(50),
phoneNumber char(10),

constraint studentId_pk primary key(studentId)
);

create table students
(
studentId smallint,
studentName varchar(50),
studentAge smallint,
studentDob date,

constraint studentId_fk foreign key(studentId) references parents(studentId)
);

--How to add "Check" constraint

create table students
(
studentId smallint,
studentName varchar(50),
studentAge smallint,
studentDob date,

constraint studentAge_check check(studentAge between 15 and 20)
--15 and 20 are inclusive
constraint studentNameUpperCase check(studentName = upper(studentName))
);































