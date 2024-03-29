create table practice.workers
(
id SMALLINT,
	name VARCHAR(20),
	address VARCHAR(100),
	exam_grade SMALLINT,
	registration_date DATE
);

INSERT INTO practice.workers VALUES(120, 'Ali Can', 'Ankara', 70, '2023-02-11');
INSERT INTO practice.workers VALUES('121', 'Veli Han', 'Trabzon', 75, '2023-03-14');
INSERT INTO practice.workers VALUES(122, 'Ayşe Tan', 'Bursa', 85, '2023-02-27');
INSERT INTO practice.workers VALUES(123, 'Mary Star', 'İstanbul', 95, '2023-09-12');
INSERT INTO practice.workers VALUES(124, 'Terry Star', 'Ankara', 95, '2023-01-30');
INSERT INTO practice.workers VALUES(125, 'Herry Star', 'Antalya', 95, '2023-07-24');
INSERT INTO practice.workers VALUES(126, 'Sally Otar', 'İzmir', 100, '2023-12-19');
 -- id, name, address, exam_grade, registration_date
-- '127', 'Bilal Aymak', 'Istanbul', '75', '2023-03-05'  added with JDBC

-- id, name, address, exam_grade, registration_date
-- '128', 'Suleyman Demirel', 'Ankara', '99', '2023-01-01' added with JDBC

-- update practice.workers set exam_grade = 90 where id = 127;
-- id, name, address, exam_grade, registration_date
-- '127', 'Bilal Aymak', 'Istanbul', '90', '2023-03-05' updated with JDBC (from 70 to 90)

-- update practice.workers set exam_grade = 80,address = 'Bingol' where id = ?;
-- # id, name, address, exam_grade, registration_date
-- '127', 'Bilal Aymak', 'Bingol', '80', '2023-03-05'  updated with JDBC (exam grade 90-->80, address Istanbul --> Bingol)

-- delete from workers where id = ?;
--# id, name, address, exam_grade, registration_date
-- '128', 'Suleyman Demirel', 'Ankara', '99', '2023-01-01'  --> is deleted with JDBC

-- id, name, address, exam_grade, registration_date
-- '120', 'Veli Yildiz', 'Diyarbakir', '69', '2023-04-19' is updated with JDBC








select * from practice.workers;