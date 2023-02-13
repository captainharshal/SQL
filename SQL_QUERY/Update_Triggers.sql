delimiter ##
create trigger marksheet_update after update on marksheet for each row
begin
insert into marksheet_copy values 
(old.sid,old.roll_no,new.student_name,old.physics_score, old.chemistry_score, new.maths_score,"UPDATE",NOW());
end##