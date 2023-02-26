-- A table called user
-- with attributes 
-- id integer, not null, auto incr and primary key
-- email string with 255 character, not null, and unique
-- name string 255 character

create table if not exists users(
    id int not null auto_increment primary key,
    email varchar(255) not null unique,
    name varchar(255) not null 
);