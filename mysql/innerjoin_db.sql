create database innerjoints_db

use innerjoints_db

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100)
);
INSERT INTO customers (name, city)
VALUES ('Rahul', 'Delhi'), ('Anita', 'Mumbai');

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO orders (customer_id, product_name, amount, order_date)
VALUES (1, 'Laptop', 55000, '2026-03-30'),
       (2, 'Phone', 20000, '2026-03-29');
       
       show tables
       
       select *
       from customers
       
        select *
       from orders
       
       select name,product_name
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id;
       
	   select *
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where amount > 20000;
       
	   select name,city,product_name
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where city = "mumbai";
       
	   select *
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where product_name like "p%" and amount > 10000;
       
	   select *
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where amount between 10000 and 50000;
       
	   select name , product_name
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id 
       where product_name="phone" or product_name="laptop";
       
	   select name,max(amount) as max_a
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       group by name
       order by max_a desc
       limit 5;
       
	   select name,max(amount) as max_a
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       group by name
       order by max_a desc
       limit 5 offset 5;
       
	   select *
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where name like "a%" and amount > 30000;
       
   	   select *
       from customers
       inner join orders
       on customers.customer_id = orders.customer_id
       where city="delhi" or city="mumbai" and amount > 20000 and product_name like "%pro%"
       limit 3 offset 2;