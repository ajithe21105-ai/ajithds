use mysqlp;

create table students(
id int,
name varchar(50),
age int,
stream varchar(10),
role varchar(50)
);

show tables;

select * 
from students;

insert into students (id,name,age,stream,role)
values
(1,"vamsi",27,"cse","trainer"),
(2,"ravi",27,"cse","engineer"),
(3,"santhosh",24,"ai&ml","student"),
(4,"shiva",23,"degree","student"),
(5,"hemanth",22,"ai&ml","student");

select *
from students
where age=27;

