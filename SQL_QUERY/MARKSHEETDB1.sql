CREATE DATABASE MARKSHEETDB1;
USE MARKSHEETDB1;

CREATE TABLE marksheet1 (sid int primary key, roll_no int unique, student_name varchar(20), 
physics_score int, chemistry_score int, maths_score int);

INSERT into marksheet1 values
(1,11,'Amit',30,60,70),
(2,15,'Sumit',40,55,90),
(3,22,'Vikas',50,65,85),
(4,25,'Vijay',50,60,70),
(5,30,'Mohan',35,66,80),
(6,35,'Sohan',47,67,77),
(7,40,'Vikas',50,70,80),
(8,42,'Jignesh',55,70,75),
(9,45,'Jignesh',41,70,80),
(10,50,'Vaibahv',50,50,50);

-- QUERY TO GET COMPLETE MARKSHEET TABLE:
SELECT *, (physics_score+chemistry_score+maths_score) AS TOTAL_SCORE FROM MARKSHEET1;

-- QUERY TO GET MERIT LIST FROM MARKSHEET TABLE:
SELECT *, (physics_score+chemistry_score+maths_score) AS TOTAL_SCORE FROM MARKSHEET1 order by TOTAL_SCORE desc; 

-- QUERY TO GET TOPPER FROM MARKSHEET TABLE:
SELECT *, (physics_score+chemistry_score+maths_score) AS TOP_SCORE from marksheet1 
where (physics_score+chemistry_score+maths_score) in 
(select max(physics_score+chemistry_score+maths_score) from marksheet1);

-- QUERY TO GET SECOND TOPPER FROM MARKSHEET TABLE:
SELECT *, (physics_score+chemistry_score+maths_score) AS SECOND_TOP_SCORE from marksheet1 
where (physics_score+chemistry_score+maths_score) in (SELECT MAX(physics_score+chemistry_score+maths_score) 
FROM marksheet1 WHERE (physics_score+chemistry_score+maths_score) < 
(SELECT MAX(physics_score+chemistry_score+maths_score) FROM marksheet1));