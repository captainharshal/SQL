drop procedure getdata;

delimiter $$
create procedure getdata(in id integer, out sname varchar(10), out phy_scr integer)
begin 
select student_name, physics_score from marksheet where sid=id into sname, phy_scr;
end$$

call getdata(4,@stname,@ph_score);
select @stname as student_name,@ph_score as physics_score;

