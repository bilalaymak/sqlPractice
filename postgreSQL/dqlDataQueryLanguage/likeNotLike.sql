-----------------SELECT-LIKE-------------------------------------
-- like: it provides certain patterns when we do queries
--LIKE Condition: It is used with WildCard
--1) % WildCard: It represents zero or more characters
--2) _ WildCard: It represents a single character
/*
select column1, column2, ....
from tableName where columnName like pattern
for patterns
% => indicates 0 or more character
_ => indicates just single character
*/

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

--  #Q9=> list personals whose name starts with "A"
 select * from personal where name like'A%'; #'1001', 'Ali Can', '70000'

-- #Q10=> list personals whose name ends with "N"
select * from personal where name like '%N';
/*'1001', 'Ali Can', '70000'
'1002', 'Canan Yaman', '85000'
'1003', 'Meltem Tan', '65000'
*/

-- #Q11=> list personals whose name's second letter is "E"
select * from personal where name like '_E%'; #'1003', 'Meltem Tan', '65000'

-- #Q12=> list personals whose name's second letter is "E" and its other letters have "N"
select * from personal where name like '_E%N'; # '1003', 'Meltem Tan', '65000'

-- #Q13=> list personals whose name has not "E"
select * from personal where name not like '%E%';
/*
'1001', 'Ali Can', '70000'
'1002', 'Canan Yaman', '85000'
*/

-- #Q14=> list personals whose salary is with six-digits
select * from personal where salary like '______';

-- #Q15=> list personals whose name's first letter is "C" and 7th letter is "Y"
select * from personal where name like 'C_____Y%'; # '1002', 'Canan Yaman', '85000'

-----------------------------------------------------------------------------

create table employees
(
id char(9),
name varchar(50),
state varchar(50),
salary smallint,
company varchar(20)
);

insert into employees values(123456789, 'John Walker', 'Florida', 2500, 'IBM');
insert into employees values(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
insert into employees values(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
insert into employees values(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
insert into employees values(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
insert into employees values(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
insert into employees values(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');



--1) % WildCard: It represents zero or more characters

--Select employee names which start with 'E'
select name from employees
where name like 'E%';

--Select employee names which end with 'e'
select name from employees
where name like '%e';

--Select employee names which start with B, end with 't'
select name from employees
where name like 'B%t';

--Select employee names which has 'a' in any position
select name from employees
where name like '%a%';

--Select employee names which has 'u' and 'r' in any position
select name from employees
where name like '%u%r%' or name like '%r%u%';

--2) _ WildCard: It represents a single character

--Select state whose second character is 'e' and forth character is 'n'
select state from employees
where state like '_e_n%';

--Select state whose last second character is 'i'
select state from employees
where state like '%i_';

--Select 'states' whose second character is 'e' and it has at least 6 characters
select state from employees
where state like '_e____%';

--Select states which has 'i' in any position after second character
select state from employees
where state like '__%i%';

------------------------NOT LIKE-----------------------------------

create table words
(
wordId char(10) unique,
word varchar(50) not null,
numberOfLetters smallint
);

insert into words values(1001, 'hot', 3);
insert into words values(1002, 'hat', 3);
insert into words values(1003, 'hit', 3);
insert into words values(1004, 'hbt', 3);
insert into words values(1008, 'hct', 3);
insert into words values(1005, 'adem', 4);
insert into words values(1006, 'selena', 6);
insert into words values(1007, 'yusuf', 5);


--Select words which do not have 'h' in any position
select word from words
where word not like '%h%';

--Select words which do not end with 't' and do not end 'f'
select word from words
where word not like '%t' word not like '%f';
--be carefully about using AND, because of the logic rules.


--Select words which start with any character, not followed by 'a', not followed by 'e'
select word from words
where word not like '_a%' and word not like '_e%';










