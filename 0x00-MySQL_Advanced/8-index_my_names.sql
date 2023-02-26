-- Creates an index idx_name_first on table names and first letter of name
-- Only first letter of name must be indexed

create index idx_name_first
on names(name(1));
