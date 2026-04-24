create database placements_db;

use placements_db;

create table student(
s_id  int primary key,
s_name varchar(10),
marks int
);


insert into student (s_id, s_name, marks)
values
(1,"rani",100),
(2,"ravi",100),
(3,"vamsi",100),
(4,"rama",null);


create table placement(
p_id int,
s_id  int ,
placed varchar(10)
);


insert into placement(p_id,s_id,placed) 
values
(101,1,"placed"),
(102,2,"placed"),
(103,3,"placed"),
(104,4,null);


select *
from student;


select *
from placement;


drop database placements;
