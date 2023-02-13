CREATE DATABASE MARKSHEETDB;
USE MARKSHEETDB;

DROP TABLE marksheet;

create TABLE marksheet (sid int primary key, 
				   roll_no varchar(20), sname varchar(20), 
                   address varchar(100));
desc marksheet;

alter table marksheet add (physics_score int, chemistry_score int, 
							maths_score int);
desc marksheet;

alter table marksheet change sname student_name varchar(20);
desc marksheet;

alter table marksheet drop address;
desc marksheet;

insert into marksheet values (1,11,'Rohit',55,65,75);
select * from marksheet;

delete from marksheet where sid=1;
select * from marksheet;

insert into marksheet values (1,11,'Rohit',55,65,75);
select * from marksheet;

insert into marksheet (sid,roll_no,student_name,physics_score,
chemistry_score, maths_score) values (2,15,'Amit',45,60,85);
select * from marksheet;

insert into marksheet values 
(3,22,'Vikas',30,60,70),
(4,25,'Vijay',50,60,70),
(5,30,'Mohan',35,66,80),
(6,35,'Sohan',47,67,77);
select * from marksheet;

update marksheet set student_name='Vaibhav', maths_score=90 
where sid=6;
select * from marksheet;

delete from marksheet where sid=6;

select * from marksheet;
select sid,student_name,maths_score from marksheet;
select * from marksheet where sid=3;
select * from marksheet where physics_score>=40;
select * from marksheet where physics_score<=40;
select * from marksheet where physics_score<>50;
select * from marksheet where physics_score=50;

create table marksheet_copy like marksheet;
alter table marksheet_copy add (OP_Type varchar(10), OP_Date datetime);

insert into marksheet values (11,60,'Neeraj',65,75,85);
select * from marksheet;
select * from marksheet_copy;

delete from marksheet_copy where sid=11;

update marksheet set student_name='Neerja', maths_score=90 where sid=11;
select * from marksheet;
select * from marksheet_copy;

delete from marksheet where sid=7;
select * from marksheet;
select * from marksheet_copy;

drop table marksheet_copy;

create table marksheet_copy select * from marksheet;
select * from marksheet_copy;

-- Arithmetic Operation:
select physics_score+chemistry_score+maths_score, physics_score, 
chemistry_score, maths_score from marksheet;

-- Aggregate Functions:
select count(*) from marksheet;
select count(student_name) from marksheet;
select sum(physics_score) from marksheet;
select max(chemistry_score) from marksheet;
select min(maths_score) from marksheet;

-- Logical Operations:
select * from marksheet where physics_score>=30 and physics_score<=50;
select * from marksheet where maths_score>70 or maths_score<80;
select * from marksheet where student_name='Amit' or maths_score<=70;
select * from marksheet where not student_name = 'Amit';

-- IN / BETWEEN CLAUSE:
select * from marksheet where physics_score between 35 and 50; -- RANGE SELECTION:
select * from marksheet where student_name in ('ROHIT','VIKAS','MOHAN'); -- GROUP OF SELECTION:
 
-- ORDER BY CLAUSE:
SELECT * FROM MARKSHEET order by student_name asc; -- BY DEFAULT ASCENDING:
SELECT * FROM MARKSHEET order by physics_score desc;

-- LIMIT CLAUSE [INDEX, NO. OF RECORDS]:
select * from marksheet limit 2; -- BY DFAULT INDEX 0:
select * from marksheet limit 0,2;
select * from marksheet limit 2,3;