delimiter ##
create trigger marksheet_insert after insert on marksheet for each row
begin
insert into marksheet_copy values 
(new.sid,new.roll_no,new.student_name,new.physics_score, new.chemistry_score, new.maths_score,"INSERT",NOW());
end##