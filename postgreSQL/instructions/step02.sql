--how to create table

--1. way: create table from scratch
--while we create a table, we can put some "constraints" for while==> "constraints" means conditions
--constraints:
--1) unique
--2) not null
--3) primary key
     --there are two ways to create "primary key"
 --1. way: to create "primary key"
--4) foreign key
create table students
(student_id char(3) primary key, --student_id cannot have repeated data, cannot have "null value",
                                 --because it is "primary key"
 student_name varchar(50) not null, --student_name will have "null" as data
 student_age smallint,
 student_dob date unique --student_id is "unique key" ==>data different from "null" must be "unique",
                         --you can have multiple null
);

create table student_name_age
as select student_name,student_age
from students;

select * from students;
select * from student_name_age;
select * from students02;
drop table students02;

--2. way: create table by using another table

create table students02
(student_id char(3),
 student_name varchar(50),
 student_age smallint,
 student_dob date, --do not forget comma
  CONSTRAINT student_id_pk primary key(student_id)
);

--how to add foreign key constraint
-- we need another table before we make a field a "foreign key"

create table parents
(
    student_id char(3),
	parent_name varchar(50),
	phone_number char(10),
	constraint student_id_pk primary key (student_id)
);

select * from parents;


create table students
(student_id char(3), --we cannot use foreign key with reference
 student_name varchar(50),
 student_age smallint,
 student_dob date,
  constraint student_id_fk foreign key(student_id) references parents(student_id)
 --to make a field foreing key, we have to use this syntax
 --foreign key is ending field
);






















