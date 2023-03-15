

---------------------------ORDER BY------------------------------

create table words
(
wordId char(10) unique,
word varchar(50) not null,
numberOfLetter smallint
);

insert into words values (1001, 'hot', 3);
insert into words values (1002, 'hat', 3);
insert into words values (1003, 'hit', 3);
insert into words values (1004, 'hbt', 3);
insert into words values (1008, 'hct', 3);
insert into words values (1005, 'adem', 4);
insert into words values (1006, 'selena', 6);
insert into words values (1007, 'yusuf', 5);
insert into words values (1009, 'bilal', 5);

--ORDER BY: to put the records in ascending or descending order we use order by.
--Order By can be used just with SELECT.

--Put the records in ascending order by using numberOfLetters
select * from words
order by numberofletter asc;
--> ASC is optional, it is ascending order as default.

--Put the records in descending order by using word
select * from words
order by word desc;
--> DESC is not optional. If you do not type DESC, it will be in ascending order.


--In Order By, instead of column names, field numbers can be used as well.
select * from words
order by 1 asc; --table is ordered by 1. column that is wordId

--descending
select * from words
order by 2 desc;  --> 2 stands for 'word' column


--------------------------------------------------

create table points
(
name varchar(50),
point smallint
);

insert into points values ('Ali', 25);
insert into points values ('Veli', 37);
insert into points values ('Kemal', 43);
insert into points values ('Ali', 36);
insert into points values ('Ali', 25);
insert into points values ('Veli', 29);
insert into points values ('Ali', 45);
insert into points values ('Veli', 11);
insert into points values ('Ali', 125);

select * from points;

--Put the records in descending order by using name field,
--and ascending order by using points field
select * from points
order by name desc ,point asc;






















