----------------DELETE-----------------
create table people
(
ssn int,
name varchar(50),
address varchar(80)
);
insert into people values(123456789, 'Mark Star', 'Florida');
insert into people values(234567890, 'Angie Way', 'Virginia');
insert into people values(345678901, 'Maryy Tien', 'New Jersey');
insert into people (ssn, address) values (456789012, 'Michigan');
insert into people (ssn, address) values(567890123, 'California');
insert into people (ssn, name) values(567890123, 'California');

--How to Delete record from a table
--Delete 'Angie Way' record from table

delete from people
where name = 'Angie Way';

--Delete records which do not have name
delete from people
where name = 'Name will be inserted later'; 

--Delete all records

delete from people;
--Delete command deletes just records but does not drop(delete) table

--Delete all records whose name is null or address is null
delete from people
where name is null or address is null;

--Delete all records whose SSN is greater than 123456789 and less than 345678901
delete from people
where ssn > 123456789 and ssn <345678901;

--Delete all records whose name is not null
delete from people
where name is not null;

--Delete all records with TRUNCATE
truncate table people;
--Truncate can not be used with 'where' so it deletes all records.
--If you delete records with Truncate you can not roll them back.

--Drop Table
drop table people;
drop table workers;

-------------------------------------------------------------------------

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

--Delete the record whose address is 'Antalya'
delete from students
where address = 'Antalya';

--Delete the lines (record/row) whose names are 'Ali Can', 'Veli Han' and 'Sally Otar'.
delete from students
where name in('Ali Can','Veli Han','Sally Otar');

-- Delete the first and last created records
delete from students
where registrationDate in((select min(registrationDate)from students),select max(registrationDate) from students);


--Delete all rows whose ids are greater than 122
delete from students
where id >122;

--Delete all records
delete from students;

--or TRUNCATE
truncate students;

--Drop the table
drop table students;





select * from people;












