
# creating table and inserting data into the table
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

# getting datas from table
select * from students;
select id from students;
select id,name from students;
drop table students;

##############################################

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

#when we fetch datas from database, we use "where" keyword with "select" to filter the datas
#select column1, select column2 ...
#from tableName where condition

#Q1=> list information of trainees whose exam grade is above 80
select * from trainee where examGrade > 80; #'124', 'Omer Yildiz', 'Mersin', '90'

#Q2=> list address information of trainees whose address is Ankara
select * from trainee where  address = 'Ankara'; #'121', 'Mehmet Can', 'Ankara', '57'

#Q3=> list all the information of trainees whose id = 123
select * from trainee where id = 123; #'123', 'bilal aymak', 'Izmir', '76'

#Q4=> list address and exam grade information whose id = 121;
select address, examGrade from trainee where id = 121;

drop table trainee;

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

# between keyword
# lists the information between two datas

#Q5=> list personals informations whose id is between 1002 and 1005

select * from  personal where id between 1002 and 1005;
select * from personal where id >=1002 and id<=1005;

#Q6=> list personals information they are between Ali Can and Omer Atalay
# 'Ali Can' and 'Omer Atalay' are inclusive
select * from personal where name between 'Ali Can' and 'Omer Atalay';

#Q7=> list personals information whose ids are 1001,1002 and 1004
select * from personal where id in(1001,1002,1004);
select * from personal where id = '1001' or id = '1002' or id = '1004';

#Q8=> list personals whose salary are 70000 and 100000
select * from personal where salary in(70000,100000);

###############################################
#select - like
#like: it provides certain patterns when we do queries

/*
select column1, column2, ....
from tableName where columnName like pattern
for patterns
% => indicates 0 or more character
_ => indicates just single character
*/

 #Q9=> list personals whose name starts with "A"
 select * from personal where name like'A%'; #'1001', 'Ali Can', '70000'

#Q10=> list personals whose name ends with "N"
select * from personal where name like '%N';
/*'1001', 'Ali Can', '70000'
'1002', 'Canan Yaman', '85000'
'1003', 'Meltem Tan', '65000'
*/

#Q11=> list personals whose name's second letter is "E"
select * from personal where name like '_E%'; #'1003', 'Meltem Tan', '65000'

#Q12=> list personals whose name's second letter is "E" and its other letters have "N"
select * from personal where name like '_E%N'; # '1003', 'Meltem Tan', '65000'

#Q13=> list personals whose name has not "E"
select * from personal where name not like '%E%';
/*
'1001', 'Ali Can', '70000'
'1002', 'Canan Yaman', '85000'
*/

#Q14=> list personals whose salary is with six-digits
select * from personal where salary like '______';

#Q15=> list personals whose name's first letter is "C" and 7th letter is "Y"
select * from personal where name like 'C_____Y%'; # '1002', 'Canan Yaman', '85000'

############################################################
/*
select-regexp_like
REGEXP_LIKE can be used for complicater patterns
'c' => means case-sensitive
'i' => means case-insensitive
in SQL as default, case-insensitive is active

syntax:
regexp_like(columnName, 'patern[]', 'c')
*/

CREATE TABLE words (
    id INT UNIQUE,
    word VARCHAR(50) NOT NULL,
    numberOfLetter INT
);
    INSERT INTO words VALUES (1001, 'hot', 3);
    INSERT INTO words VALUES (1002, 'hat', 3);
    INSERT INTO words VALUES (1003, 'hit', 3);
    INSERT INTO words VALUES (1004, 'hbt', 3);
    INSERT INTO words VALUES (1005, 'hct', 3);
    INSERT INTO words VALUES (1006, 'adem', 4);
    INSERT INTO words VALUES (1007, 'selim', 5);
    INSERT INTO words VALUES (1008, 'yusuf', 5);
    INSERT INTO words VALUES (1009, 'hip', 3);
    INSERT INTO words VALUES (1010, 'HOT', 3);
    INSERT INTO words VALUES (1011, 'hOt', 3);
    INSERT INTO words VALUES (1012, 'h9t', 3);
    INSERT INTO words VALUES (1013, 'hoot', 4);
    INSERT INTO words VALUES (1014, 'haaat', 5);
    INSERT INTO words VALUES (1015, 'hooooot', 5);

 select * from words;

 #Q16=> list words containing the letters 'ot' or 'at', paying attention to case sensitivity
 select * from words where regexp_like(word, 'ot|at', 'c');
 #we use " | " character for "or" in regexp_like expressions

 #Q17=> list words containing the letters 'ot' or 'at', not paying attention to case sensitivity

 select * from words where regexp_like(word, 'ot|at', 'i');
 select * from words where regexp_like(word, 'ot|at');
 #we don't have to use 'i' to catch case-insensitivity
 #because SQL is already case-insensitive as default

 #Q18=> list words starting with "ho" or "hi" , not paying attention to case sensitivity
 select * from words where regexp_like(word,'^ho|^hi');
 # " ^ " character indicates the beginning
 #that is "^a" ==> means the word starts with "a"

 #Q19=> list three-letter-words start with 'h' and end with 'm', paying attention to case sensitivity
 select * from words where regexp_like(word, 'h[a-zA-Z-0-9]t','c');
 #3 letter ==> 1st letter/[inside the brackets] 2nd letter/3rd letter

 #Q20=> list three-letter-words start with "h", end with "t", its second letter is "a" or "i"
 select * from words where regexp_like(word,'^h[a|i]t');

 #Q21=> list four-letter-words start with 'h' and end with 'm', paying attention to case sensitivity
 select * from words where regexp_like(word,'h[a-zA-Z-0-9][a-zA-Z-0-9]t','c');

 #Q22=> list words ending with "t" or "m"
 select * from words where regexp_like(word, 't$|m$'); # or wecan use 't$|m'

 #Q23=> list words including "m","i" or "e"
 select * from words where regexp_like(word, 'm|i|e');
 select * from words where regexp_like(word, '[mie]');

 #Q24=> list words start with "a" or "s"
 select * from words where regexp_like(word, '^a|^s');

 #Q25=> list words including at least two "o"
 select * from words where regexp_like(word,'oo');

  #Q26=> list words including at least four "o"
   select * from words where regexp_like(word,'oooo');

#Q27=> list five-letter-words starting with "s" or "b", 3rd letter is "l"
select * from words where regexp_like(word, '^s|^b_[l]__','c');
















