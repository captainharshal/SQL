delimiter ##
create trigger marksheet_delete before delete on marksheet for each row
begin
insert into marksheet_copy values 
(old.sid,old.roll_no,old.student_name,old.physics_score, old.chemistry_score, old.maths_score,"DELETE",NOW());
end##