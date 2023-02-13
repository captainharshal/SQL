CREATE DATABASE testDB;
show databases;
use testDB; 

create TABLE UNIT (uid int primary key, 
				   city varchar(20), capacity int);
desc UNIT;

create TABLE PART (pid int, name varchar(10),
				   color varchar(10),
                   unit_id int, 
				   primary key PART(pid),
                   foreign key PART(unit_id) references UNIT(uid));
desc PART;

create TABLE ORDERDATA (qid int, orddate date, 
			 qty int, qty_id int, 
			 primary key ORDERDATA(qid), 
             Foreign Key ORDERDATA(qty_id) references PART(pid));
describe ORDERDATA;