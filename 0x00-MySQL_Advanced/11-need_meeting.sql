-- Creates a view need_meeting that lists all students that have a score under 80 (strict)
-- no last_meeting or more than 1 month

drop view if exists need_meeting;
create view need_meeting AS
select name from students where score < 80
and (students.last_meeting is null or students.last_meeting < DATE_ADD(now(), INTERVAL -1 month));
