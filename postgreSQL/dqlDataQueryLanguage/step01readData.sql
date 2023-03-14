--DQL: It is language for reading data. We use 'SELECT'

create table workers
(
id smallint,
name varchar(50),
salary smallint,

constraint workersId_pk primary key(id)
);

insert into workers values(10001, 'Ali Can', 12000);
insert into workers values(10002, 'Veli Han', 2000);
insert into workers values(10003, 'Mary Star', 7000);
insert into workers values(10004, 'Angie Ocean', 8500);

--How to select all records
select * from workers;

--How to get specific fields from a table
select name from workers;

--How to get specific multiple fields
select name, salary from workers;

--How to get specific record
select * from workers
where id = 10001;

--How to get multiple specific records
select * from workers
where id < 10003;

--Get records whose salary is 2000 or 7000 or 12000
--1. Way: NOT Recommended
select * from workers
where salary = 2000 or salary = 7000 or salary = 12000;

--2. Way: Instead of using OR again and again, use IN

select * from workers
where salary in(2000,7000,12000);


--creating table and inserting data into the table
drop table students;
create table students
(
id varchar(4),
name varchar(30),
age int
);

insert into students values ('1000','yusuf Gur', 24);
insert into students values ('1000','Nazan Yaman', 27);
insert into students values ('1000','Meltem Can', 34);
insert into students values ('1000','Omer Asaf', 18);

-- getting datas from table
select * from students;
select id from students;
select id,name from students;
drop table students;

---------------------------------------------------

create table trainee
(
id int,
name varchar(40),
address varchar(100),
examGrade int
);
insert into trainee values ('120','Ahmet Yaman','Istanbul',59);
insert into trainee values ('121','Mehmet Can','Ankara',57);
insert into trainee values ('122','Meltem Atalay','Bingol',78);
insert into trainee values ('123','bilal aymak','Izmir',76);
insert into trainee values ('124','Omer Yildiz','Mersin',90);

select * from trainee;

-- #when we fetch datas from database, we use "where" keyword with "select" to filter the datas
-- #select column1, select column2 ...
-- #from tableName where condition

-- #Q1=> list information of trainees whose exam grade is above 80
select * from trainee where examGrade > 80;--#'124', 'Omer Yildiz', 'Mersin', '90'

-- #Q2=> list address information of trainees whose address is Ankara
select * from trainee where  address = 'Ankara';-- #'121', 'Mehmet Can', 'Ankara', '57'

-- #Q3=> list all the information of trainees whose id = 123
select * from trainee where id = 123;--'123', 'bilal aymak', 'Izmir', '76'

-- #Q4=> list address and exam grade information whose id = 121;
select address, examGrade from trainee where id = 121;

drop table trainee;


--------------------------------------------------

create table personal
(
id char(4),
name varchar(40),
salary int
);
insert into personal values('1001','Ali Can','70000');
insert into personal values('1002','Canan Yaman','85000');
insert into personal values('1003','Meltem Tan','65000');
insert into personal values('1004','Omer Atalay','75000');

-- # between keyword
-- # lists the information between two datas

-- #Q5=> list personals informations whose id is between 1002 and 1005

select * from  personal where id between 1002 and 1005;
select * from personal where id >=1002 and id<=1005;

-- #Q6=> list personals information they are between Ali Can and Omer Atalay
-- # 'Ali Can' and 'Omer Atalay' are inclusive
select * from personal where name between 'Ali Can' and 'Omer Atalay';

-- #Q7=> list personals information whose ids are 1001,1002 and 1004
select * from personal where id in(1001,1002,1004);
select * from personal where id = '1001' or id = '1002' or id = '1004';

-- #Q8=> list personals whose salary are 70000 and 100000
select * from personal where salary in(70000,100000);

----------------------------------------------------

create table students
(
id smallint,
name varchar(20),
address varchar(100),
examGrade smallint,
registrationDate date
);


insert into students values(120, 'Ali Can', 'Ankara', 70, '11.Feb.2023');
insert into students values('121', 'Veli Han', 'Trabzon', 75, '11.02.2022');
insert into students values(122, 'Ayşe Tan', 'Bursa', 85, '11.Aug.2021');
insert into students values(123, 'Mary Star', 'İstanbul', 95, 'Jan.1.2020');
insert into students values(124, 'Terry Star', 'Ankara', 95, '1.Sep.19');
insert into students values(125, 'Herry Star', 'Antalya', 95, '1.2.18');
insert into students values(126, 'Sally Otar', 'İzmir', 100, '30.6.17');

--Q9=> Get all columns from students table.
select * from students;

--Q10=> Get the id and name columns in the students table.
select id,name from students;

--Q11=> Get all student information with a grade above 85.
select * from students
where  examGrade >85;

--Q12=> Get the names of students whose address is Ankara
select * from students
where address = 'Ankara';

--Q13=> Get the students whose grade is above 85 and whose address is Ankara.
select * from students
where  examGrade > 85 and address = 'Ankara';

--Q14=> Get all columns of the students whose exam_grade is 95 or 70.
select * from students
where examGrade in(95,70);
--or where examGrade = 95 or examGrade = 70;

--Q15=> Get the names of the students whose exam_grade is between 75 and 95.
select * from students
where examGrade between 75 and 95; --Boundaries are inclusive
--or where examGrade >=75 and examGrade <= 95;

--Q16=>(NOT BETWEEN) Get the addresses of students whose IDs are not between 122 and 125.
select address from students
where id not between 122 and 125; --Boundaries are exclusive
--or where id <122 or id >125;

--or where id not in (122,123,124,125);






























