create database groupby_db;
use groupby_db;
show databases;

CREATE TABLE products (
   product_id INT PRIMARY KEY,
   product_name VARCHAR(50),
   category VARCHAR(30),
   price DECIMAL(10,2),
   stock INT,
   brand VARCHAR(30)
);
INSERT INTO products VALUES
(1, 'iPhone 13', 'Mobile', 70000, 10, 'Apple'),
(2, 'Galaxy S21', 'Mobile', 60000, 15, 'Samsung'),
(3, 'Redmi Note 11', 'Mobile', 20000, 25, 'Xiaomi'),
(4, 'MacBook Air', 'Laptop', 90000, 5, 'Apple'),
(5, 'Dell Inspiron', 'Laptop', 55000, 8, 'Dell'),
(6, 'HP Pavilion', 'Laptop', 60000, 7, 'HP'),
(7, 'Sony Headphones', 'Accessories', 8000, 20, 'Sony'),
(8, 'Boat Earbuds', 'Accessories', 2000, 50, 'Boat'),
(9, 'iPad', 'Tablet', 50000, 12, 'Apple'),
(10, 'Samsung Tab', 'Tablet', 30000, 18, 'Samsung'),
(11, 'Asus Laptop', 'Laptop', 65000, 6, 'Asus'),
(12, 'OnePlus 11', 'Mobile', 55000, 14, 'OnePlus'),
(13, 'Realme Narzo', 'Mobile', 15000, 30, 'Realme'),
(14, 'Lenovo ThinkPad', 'Laptop', 75000, 4, 'Lenovo'),
(15, 'JBL Speaker', 'Accessories', 10000, 22, 'JBL'),
(16, 'Mi Pad', 'Tablet', 25000, 16, 'Xiaomi'),
(17, 'AirPods', 'Accessories', 15000, 9, 'Apple'),
(18, 'Oppo F21', 'Mobile', 22000, 19, 'Oppo'),
(19, 'Vivo V27', 'Mobile', 28000, 17, 'Vivo'),
(20, 'Noise Watch', 'Accessories', 5000, 40, 'Noise');


show tables;

select*
from products;


select category,count(*) as total_proudcts
from products
group by category;


select category,sum(stock) as total_stock
from products
group by category;


select category,avg(price) as avg_price
from products
group by category;


select brand,count(brand) as total_products
from products
group by brand;


select category,max(price) as max_price
from products
group by category;


select brand,sum(stock) as total_stock
from products
group by brand
order by total_stock desc;


select category,avg(price) as avg_price
from products
group by category
order by avg_price desc;


select category,count(*) as total_products
from products
group by category
order by total_products asc;


select category,count(product_id) as total_products
from products
group by category
having total_products>3;


select brand,sum(stock) as total_stock
from products
group by brand
having total_stock>40;


select category,avg(price) as avg_price
from products
group by category
having avg_price<30000;


select brand,count(*) as total_products
from products
group by brand
having total_products>2;


select category,max(price) as max_price
from products
group by category
having max_price>70000;


select category,sum(stock) as total_stock
from products
group by category
having total_stock > 30
order by total_stock desc;



select category, avg(price) as avg_price
from products
group by category
having avg_price > 40000
order by avg_price desc;


select category,count(product_id) as total_count
from products
group by category
having total_count >= 2
order by total_count desc;


select product_name,price as max_price
from products
order by price desc
limit 5;


select product_name,price as min_price
from products
order by min_price asc
limit 3;


select product_name,price
from products
order by price desc
limit 5;


select product_name,price
from products
order by price asc
limit 4 offset 2;
