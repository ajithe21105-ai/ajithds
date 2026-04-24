create database joins_db;
use joins_db;


CREATE TABLE Students (
   student_id INT PRIMARY KEY,
   name VARCHAR(50),
   email VARCHAR(100),
   phone VARCHAR(15),
   city VARCHAR(50),
   gender VARCHAR(10),
   dob DATE,
   course_id INT,
   join_date DATE
);

INSERT INTO Students VALUES
(101, 'Suresh', 'suresh@gmail.com', '9876543210', 'Hyderabad', 'Male', '2000-05-10', 2, '2024-01-01'),
(102, 'Sneha', 'sneha@gmail.com', '9876543211', 'Hyderabad', 'Female', '2001-07-12', 3, '2024-02-01'),
(103, 'Ravi', 'ravi@gmail.com', '9876543212', 'Chennai', 'Male', '1999-08-15', 1, '2024-01-15'),
(104, 'Kiran', 'kiran@gmail.com', '9876543213', 'Bangalore', 'Male', '2002-09-20', 4, '2024-01-10'),
(105, 'Swathi', 'swathi@gmail.com', '9876543214', 'Hyderabad', 'Female', '2000-11-25', 5, '2024-03-01'),
(106, 'Amit', 'amit@gmail.com', '9876543215', 'Delhi', 'Male', '1998-03-18', 6, '2024-02-20'),
(107, 'Sara', 'sara@gmail.com', '9876543216', 'Hyderabad', 'Female', '2001-12-05', 2, '2024-01-05'),
(108, 'Sanjay', 'sanjay@gmail.com', '9876543217', 'Mumbai', 'Male', '1997-06-30', 3, '2024-03-10'),
(109, 'Divya', 'divya@gmail.com', '9876543218', 'Hyderabad', 'Female', '2002-04-14', NULL, '2024-02-25'),
(110, 'Sunil', 'sunil@gmail.com', '9876543219', 'Pune', 'Male', '1999-01-22', 7, '2023-12-15'),
(111, 'Sita', 'sita@gmail.com', '9876543220', 'Hyderabad', 'Female', '2003-02-11', 6, '2024-01-02'),
(112, 'Arjun', 'arjun@gmail.com', '9876543221', 'Chennai', 'Male', '2000-10-10', NULL, '2024-01-18');

CREATE TABLE Courses (
   course_id INT PRIMARY KEY,
   course_name VARCHAR(50),
   duration_months INT,
   fees INT,
   trainer_name VARCHAR(50),
   mode VARCHAR(20), -- Online / Offline
   start_date DATE
);

INSERT INTO Courses VALUES
(1, 'SQL Basics', 3, 25000, 'Ravi', 'Online', '2024-01-10'),
(2, 'Python Full Stack', 8, 75000, 'Kiran', 'Offline', '2024-02-15'),
(3, 'Data Science', 10, 90000, 'Anita', 'Online', '2024-03-01'),
(4, 'Java Development', 6, 50000, 'Ravi', 'Offline', '2024-01-20'),
(5, 'Web Development', 4, 30000, 'Kiran', 'Online', '2024-04-10'),
(6, 'Machine Learning', 9, 85000, 'Suresh', 'Online', '2024-05-05'),
(7, 'Excel Basics', 2, 15000, 'Anil', 'Offline', '2024-01-05');


select *
from students;

select *
from courses;

-- 1.
-- Show student name, course name, and fees where course fees are between 30,000 and 80,000 and student city is Hyderabad.
 -- 👉 Scenario: City-based premium course analysis

select s.name , c.course_name , c.fees
from students s
inner join courses c
on s.course_id = c.course_id
where fees  between 30000 and 80000 and city = "hyderabad";

-- 2.
-- Find students whose course mode is Online and whose names start with 'S'.

select c.mode , s.name
from students s
inner join courses c
on s.course_id = c.course_id 
where mode = "online" and name like "s%";                

-- 3.
-- Display course name and total number of students enrolled, but only for courses having more than 2 students.
--  👉 Use GROUP BY + HAVING
--  👉 Scenario: Popular course tracking

select c.course_name , count(students.student_id) as tot_std
from students s
inner join courses c
on s.course_id = c.course_id
group by course_name
having tot_std > 1; 

-- 4.
-- List students who joined before course start date and course duration is greater than 6 months.
--  👉 Scenario: Early enrollment analysis

select s.name , s.join_date , c.start_date , c.duration_months
from students s
inner join courses c
on s.course_id = c.course_id
where join_date >  start_date and duration_months > 6;

-- 5.
-- Find students enrolled in courses handled by trainers 'Ravi' or 'Kiran' and fees greater than 40,000.
--  👉 Use IN + AND
--  👉 Scenario: Trainer performance

select trainer_name , fees
from students
inner join courses
on students.course_id = courses.course_id
where trainer_name in ("ravi" , "kiran") and fees > 10000;

-- 🟢 LEFT JOIN (Intermediate – Real-Time)
-- 6.
-- Show all students and their course details where course fees are greater than 50,000 OR student has no course assigned.
--  👉 Use OR + NULL logic
--  👉 Scenario: Premium + unassigned students

select students.name , courses.course_name
from students
left join courses
on students.course_id = courses.course_id
where fees > 50000 or course_name is null;

-- 7.
-- Find students who are not enrolled in any course OR enrolled in Offline courses.
--  👉 Scenario: Offline marketing campaign

select course_name , mode
from students
left join courses
on students.course_id = courses.course_id and course_name is null or mode = "offline";

-- 8.
-- Display course name and number of students, including courses with zero students, and show only courses with student count less than 3.
--  👉 Use GROUP BY + HAVING
--  👉 Scenario: Low enrollment detection

select name , count(student_id) as tot_st
from students
left join courses
on students.course_id = courses.course_id
group by name
having tot_st > 3;

-- 9.
-- Show students whose course start date is between '2024-01-01' and '2024-12-31' OR who have no course.
--  👉 Use BETWEEN
--  👉 Scenario: New batch tracking

select course_name , start_date
from students s
left join courses c
on s.course_id = c.course_id
where start_date between "2024-01-01" and "2024-12-31" or course_name is null;

-- 10.
-- List all students and display course name only if course fees are above average fees, otherwise show NULL.
--  👉 Use subquery concept
--  👉 Scenario: High-value course filtering

-- select course_name , avg(fees) as avg_fe
-- from students
-- left join courses
-- on students.course_id = courses.course_id
-- where students = (select students
-- from courses 
-- where fee = (select max(fee) form courses;

-- 🔴 RIGHT JOIN (Intermediate – Real-Time)
-- 11.
-- Show all courses with student names where course fees are greater than 40,000.
--  👉 Scenario: Premium course dashboard

select course_name , fees
from students s
right join courses c
on s.course_id = c.course_id
where fees > 40000;


-- 12.
-- Find courses that have no students OR duration is less than 3 months.
--  👉 Scenario: Course optimization

select s.name , c.duration_months
from students s
right join courses c
on students.course_id = courses.course_id
where c.course_name is null and d.duration_months < 3;

-- 13.
-- Display course name and total students, and show only courses where total students are between 1 and 5.
--  👉 Use BETWEEN + HAVING
--  👉 Scenario: Medium batch analysis

select s.name , count(name) as tot_n
from students s
right join courses c
on s.course_id = c.course_id
group by name
having  tot_n between 1 and 5;

-- 14.
-- List all courses where trainer name contains 'a' and show student names if available.
--  👉 Use LIKE
--  👉 Scenario: Trainer-based insights

select c.trainer_name , s.name
from students s
right join courses c
on s.course_id = c.course_id
where trainer_name and studentslike "a";

-- 15.
-- Show all courses and students where student join date is after '2023-01-01', but still include courses with no students.
--  👉 Scenario: Recent enrollment tracking


select *
from students s
right join courses c
on s.course_id = c.course_id
where join_date <= 2023-01-01;
