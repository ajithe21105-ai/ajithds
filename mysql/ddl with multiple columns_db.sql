create database training_db; 
use training_db;
show databases;
 
show tables;

CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
course VARCHAR(50)
);

INSERT INTO students (name,course) VALUES
('Ram','Python'),
('John','Java'),
('Sara','React'),
('Ravi','SQL');


set autocommit=0;
delete from students
where id=2;

select *
from students

rollback;             --  yes data is back  --

delete from students
where id=3;

commit;

rollback;             --   no data is not back  --

set autocommit=0;
                

delete from students;              

rollback;

truncate table students;

rollback;

drop table students;

rollback;

1a)  delete command

2a)  truncate command
 
3a)  drop command

4a)  rollback command   but first we need to set autocommit=0;
 
5a)  commit command