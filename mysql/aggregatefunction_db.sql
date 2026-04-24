create database assignmentaggregatefunctions;
use assignmentaggregatefunctions;
show databases;



CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(30),
price INT,
stock INT,
rating DECIMAL(2,1)
);

show tables;

INSERT INTO products VALUES
(1,'Laptop','Electronics',75000,15,4.5),
(2,'Mobile','Electronics',25000,40,4.3),
(3,'Headphones','Electronics',3000,60,4.1),
(4,'Shoes','Fashion',4000,50,4.2),
(5,'T-Shirt','Fashion',1200,80,3.9),
(6,'Watch','Fashion',6000,25,4.4),
(7,'Refrigerator','Appliances',45000,10,4.6),
(8,'Microwave','Appliances',8000,18,4.0),
(9,'Air Conditioner','Appliances',55000,8,4.5),
(10,'Backpack','Accessories',2000,35,4.2),
(11,'Keyboard','Electronics',1500,70,4.1),
(12,'Mouse','Electronics',800,90,4.0);



select *
from products;

select count(product_id)
from products;

select sum(stock)
from products;

select avg(price)
from products;

select max(price)
from products;

select min(price)
from products;

select count(category)
from products
where category="electronics";                      

select sum(stock)
from products
where category="fashion";                         

select avg(appliances)
from products
where category="appliances";    

select max(rating) 
from products;       

select min(rating) 
from products;             

select count(price)
from products
where price>10000;

select count(price)
from products
where price>10000;

select sum(stock)
from products
where price>5000;

select avg(rating)
from products;

select max(price) 
from products
where category="fashion";  

select min(price) 
from products
where category="electronics";

select count(rating) 
from products
where rating>4.3;

select sum(stock) 
from products
where price<5000;

select avg(price) 
from products
where rating>4.2;

select count(stock) 
from products
where stock>50;