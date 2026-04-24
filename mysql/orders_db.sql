create database orders_db;
use orders_db;


CREATE TABLE orders (
   order_id INT PRIMARY KEY,
   customer_name VARCHAR(50),
   city VARCHAR(50),
   amount INT,
   order_status VARCHAR(20)
);



INSERT INTO orders VALUES
(1, 'Amit', 'Mumbai', 5000, 'Delivered'),
(2, 'Neha', 'Delhi', 7000, 'Pending'),
(3, 'Rahul', 'Hyderabad', 3000, 'Cancelled'),
(4, 'Sneha', 'Mumbai', 8000, 'Delivered'),
(5, 'Kiran', 'Chennai', 4500, 'Pending'),
(6, 'Vikas', 'Delhi', 6000, 'Delivered'),
(7, 'Pooja', 'Hyderabad', 7500, 'Delivered'),
(8, 'Arjun', 'Mumbai', 2000, 'Cancelled'),
(9, 'Divya', 'Chennai', 9000, 'Delivered'),
(10, 'Ravi', 'Delhi', 8500, 'Pending'),
(11, 'Meena', 'Hyderabad', 4000, 'Delivered'),
(12, 'Suresh', 'Mumbai', 9500, 'Delivered'),
(13, 'Anil', 'Chennai', 3000, 'Cancelled'),
(14, 'Kavya', 'Delhi', 7200, 'Delivered'),
(15, 'Ramesh', 'Hyderabad', 6800, 'Pending'),
(16, 'Priya', 'Mumbai', 7700, 'Delivered'),
(17, 'Manoj', 'Chennai', 5200, 'Pending'),
(18, 'Swathi', 'Delhi', 6100, 'Delivered'),
(19, 'Nikhil', 'Hyderabad', 8300, 'Delivered'),
(20, 'Deepika', 'Mumbai', 4200, 'Pending');




select *
from orders;



-- Find orders with amount greater than average order amount

select *
from orders
where amount > 
(select avg(amount) as avg_amt
from orders);


-- = , < , >
-- Find order(s) with maximum amount

select *
from orders
where amount = 
(select max(amount) as ma_amt
from orders);



-- Find orders with amount less than minimum amount in Delhi

select *
from orders
where amount = 
(select min(amount) as mi_amt
from orders
where city = "delhi");



-- Find orders with amount equal to amount of 'Amit'

select *
from orders
where amount = 
( select amount
from orders
where customer_name = "amit" );



-- Find orders with amount greater than average amount of Mumbai

select *
from orders
where amount > 
( select avg(amount) as avg_amt
from orders
where city = "mumbai" );



-- Find orders where amount matches any amount from Mumbai

select *
from orders
where amount in 
( select amount
from orders
where city = "mumbai" );


-- in , any , all
-- Find orders where amount is greater than all amounts from Chennai

select *
from orders
where amount >all 
( select amount
from orders
where city = "chennai" );



-- Find customers who placed orders in cities where amount > 8000 exists           

select *
from orders
where amount in 
( select amount
from orders
where amount > 8000 );



-- Find orders whose amount is less than any amount from Delhi

select *
from orders
where amount < all 
( select amount
from orders
where city = "delhi" );



-- Find orders from cities where any order is cancelled                     

select *
from orders
where order_status in 
( select order_status
from orders
where order_status = "cancelled" );


-- *****interview
-- Find second highest order amount

select *
from orders
where amount = 
( select amount
from orders
order by amount desc
limit 1 offset 1 );



-- Find city with highest average order amount                                              

select city , amount
from orders
where amount =
( select avg(amount) as avg_amt
from orders
group by amount
order by avg_amt desc
limit 1 );



-- Find customers whose order amount is greater than their city average              

select *
from orders
where amount > 
( select avg(amount) as avg_amt
from orders );



-- Find all orders from cities having more than 3 orders

select *
from orders
where city in 
( select city
from orders
group by city
having count(*) > 3 );