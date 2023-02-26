-- Create a stored procedure AddBonus
-- add a new correction for a student


delimiter $$

create procedure AddBonus(in user_id INTEGER, in project_name varchar(255), in score INTEGER)
begin
        insert into project(name) select project_name from DUAL
        where not exists (select * from projects where name = project_name limit 1);

        insert into corrections (user_id, project_id, score) values (user_id, (select id from projects where name = project_name), score);
end $$

delimiter ;

