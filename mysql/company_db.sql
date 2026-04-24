create database company_db;

use company_db;

create table employees(
emp_id int primary key,
name varchar(50),
department varchar(50),
salary int,
age int,
city varchar(50),
joining_date DATE,
email varchar(100),
is_active boolean
);

show tables;

insert into employees (emp_id,name,salary,age,city,joining_date,email,is_active)

INSERT INTO employees VALUES
(1,'Arjun',25,'IT',55000,'Hyderabad','arjun@gmail.com',TRUE,'2022-05-10'),
(2,'Anita',28,'HR',35000,'Bangalore','anita@gmail.com',TRUE,'2021-03-15'),
(3,'Rohan',32,'Sales',45000,'Chennai','rohan@gmail.com',TRUE,'2020-08-20'),
(4,'Karan',29,'IT',62000,'Hyderabad','karan@gmail.com',TRUE,'2023-01-12'),
(5,'Meena',26,'Marketing',38000,'Mumbai','meena@gmail.com',FALSE,'2021-11-30'),
(6,'Aman',24,'IT',50000,'Bangalore','aman@gmail.com',TRUE,'2022-09-18'),
(7,'Sneha',31,'HR',42000,'Hyderabad','sneha@gmail.com',TRUE,'2019-06-22'),
(8,'Varun',27,'Sales',47000,'Delhi','varun@gmail.com',TRUE,'2022-02-10'),
(9,'Pooja',23,'Marketing',30000,'Pune','pooja@gmail.com',FALSE,'2020-10-05'),
(10,'Arun',34,'IT',70000,'Hyderabad','arun@gmail.com',TRUE,'2018-07-14'),
(11,'Kavya',22,'Sales',28000,'Bangalore','kavya@gmail.com',TRUE,'2023-04-02'),
(12,'Ravi',36,'Admin',52000,'Chennai','ravi@gmail.com',TRUE,'2019-12-11'),
(13,'Asha',27,'Marketing',41000,'Hyderabad','asha@gmail.com',TRUE,'2022-06-25'),
(14,'Manoj',30,'IT',65000,'Mumbai','manoj@gmail.com',TRUE,'2021-01-17'),
(15,'Deepa',28,'HR',36000,'Delhi','deepa@gmail.com',FALSE,'2020-03-03'),
(16,'Aravind',35,'Sales',48000,'Hyderabad','aravind@gmail.com',TRUE,'2022-08-19'),
(17,'Nikhil',26,'IT',53000,'Bangalore','nikhil@gmail.com',TRUE,'2023-02-01'),
(18,'Bhavna',29,'Marketing',39000,'Chennai','bhavna@gmail.com',TRUE,'2021-07-07'),
(19,'Kiran',33,'Admin',44000,'Hyderabad','kiran@gmail.com',TRUE,'2019-09-23'),
(20,'Alok',24,'Sales',31000,'Pune','alok@gmail.com',FALSE,'2022-12-12'),
(21,'Ramesh',37,'HR',46000,'Delhi','ramesh@gmail.com',TRUE,'2018-05-30'),
(22,'Anil',28,'IT',58000,'Hyderabad','anil@gmail.com',TRUE,'2023-03-08'),
(23,'Suman',31,'Marketing',42000,'Mumbai','suman@gmail.com',TRUE,'2021-10-15'),
(24,'Aruna',25,'Sales',34000,'Bangalore','aruna@gmail.com',TRUE,'2022-04-19'),
(25,'Tarun',27,'IT',61000,'Hyderabad','tarun@gmail.com',TRUE,'2020-06-21'),
(26,'Geeta',29,'HR',37000,'Chennai','geeta@gmail.com',FALSE,'2021-02-09'),
(27,'Rajat',34,'Admin',49000,'Delhi','rajat@gmail.com',TRUE,'2019-11-11'),
(28,'Aarti',23,'Marketing',32000,'Pune','aarti@gmail.com',TRUE,'2023-05-14'),
(29,'Vikram',38,'Sales',54000,'Hyderabad','vikram@gmail.com',TRUE,'2018-08-18'),
(30,'Arman',26,'IT',56000,'Bangalore','arman@gmail.com',TRUE,'2022-07-27'),
(31,'Neha',27,'HR',35000,'Mumbai','neha@gmail.com',FALSE,'2021-09-29'),
(32,'Sanjay',35,'Admin',47000,'Hyderabad','sanjay@gmail.com',TRUE,'2020-01-01'),
(33,'Akhil',24,'IT',51000,'Chennai','akhil@gmail.com',TRUE,'2023-06-06'),
(34,'Pavan',28,'Sales',43000,'Bangalore','pavan@gmail.com',TRUE,'2022-11-11'),
(35,'Ananya',22,'Marketing',29000,'Hyderabad','ananya@gmail.com',TRUE,'2023-08-08'),
(36,'Harish',39,'Admin',60000,'Delhi','harish@gmail.com',TRUE,'2017-03-03'),
(37,'Amar',33,'IT',72000,'Hyderabad','amar@gmail.com',TRUE,'2019-04-04'),
(38,'Divya',26,'HR',36000,'Chennai','divya@gmail.com',TRUE,'2021-05-05'),
(39,'Kunal',31,'Sales',45000,'Mumbai','kunal@gmail.com',FALSE,'2020-07-07'),
(40,'Arjun',29,'IT',59000,'Hyderabad','arjun2@gmail.com',TRUE,'2022-10-10'),
(41,'Shreya',25,'Marketing',33000,'Pune','shreya@gmail.com',TRUE,'2023-01-20'),
(42,'Rahul',34,'Sales',52000,'Bangalore','rahul@gmail.com',TRUE,'2021-12-12'),
(43,'Amit',27,'IT',54000,'Hyderabad','amit@gmail.com',TRUE,'2022-03-03'),
(44,'Naveen',30,'Admin',41000,'Chennai','naveen@gmail.com',FALSE,'2020-02-02'),
(45,'Aryan',23,'Sales',30000,'Hyderabad',NULL,TRUE,'2023-07-07'),
(46,'Bhaskar',36,'HR',46000,'Delhi','bhaskar@gmail.com',TRUE,'2019-08-08'),
(47,'Charan',28,'IT',62000,'Bangalore','charan@gmail.com',TRUE,'2021-06-06'),
(48,'Dinesh',32,'Marketing',40000,'Mumbai','dinesh@gmail.com',TRUE,'2020-05-05'),
(49,'Eshan',24,'Sales',31000,'Hyderabad',NULL,FALSE,'2022-09-09'),
(50,'Farhan',29,'IT',58000,'Pune','farhan@gmail.com',TRUE,'2021-04-04');


