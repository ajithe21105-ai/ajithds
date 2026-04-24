create database alter_db;
use alter_db;
show databases;

create table languages(
lan_id int ,
lan_name varchar(10) not null
);

insert into languages
values
(1,"python"),
(2,"sql");

show tables;

alter table languages
add email varchar(30); 

select*
from languages

update  languages
set language="java"
where lan_id=1;

alter table languages
drop column email;

alter table languages
add salary decimal; 

alter table  languages
set 