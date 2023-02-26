-- Creates an index idx_name_first_score on table names and first letter of name and score
-- Only first letter of name AND score must be indexed

create index idx_name_first_score
on names(name(1), score);
