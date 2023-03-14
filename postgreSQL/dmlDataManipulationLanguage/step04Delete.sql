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








select * from people;












