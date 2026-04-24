use resturant_db;
CREATE TABLE pakka_telugu_menu (

item_id INT PRIMARY KEY AUTO_INCREMENT,

item_name VARCHAR(60) NOT NULL UNIQUE,

category VARCHAR(30) NOT NULL
CHECK (category IN (
'Veg Soup',
'Non Veg Soup',
'Veg Starter',
'Non Veg Starter',
'Veg Biryani',
'Non Veg Biryani'
)),

price DECIMAL(6,2) NOT NULL CHECK (price > 0),

is_veg BOOLEAN NOT NULL,

spice_level VARCHAR(10) NOT NULL
CHECK (spice_level IN ('Low','Medium','High')),

calories INT CHECK (calories BETWEEN 100 AND 1500),

preparation_time INT NOT NULL CHECK (preparation_time BETWEEN 5 AND 60),

rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5),

available BOOLEAN DEFAULT TRUE

);

INSERT INTO pakka_telugu_menu
(item_name,category,price,is_veg,spice_level,calories,preparation_time,rating)
VALUES
('Tomato Soup','Veg Soup',120,TRUE,'Low',150,10,4.3),
('Sweet Corn Soup','Veg Soup',130,TRUE,'Low',180,10,4.4),
('Hot and Sour Veg Soup','Veg Soup',140,TRUE,'Medium',200,12,4.5),
('Mushroom Soup','Veg Soup',150,TRUE,'Medium',220,12,4.4),
('Veg Manchow Soup','Veg Soup',140,TRUE,'Medium',210,12,4.5),
('Chicken Soup','Non Veg Soup',160,FALSE,'Low',230,12,4.5),
('Chicken Manchow Soup','Non Veg Soup',180,FALSE,'Medium',260,14,4.6),
('Chicken Hot and Sour Soup','Non Veg Soup',170,FALSE,'Medium',250,14,4.5),
('Mutton Soup','Non Veg Soup',200,FALSE,'Medium',300,16,4.6),
('Fish Soup','Non Veg Soup',190,FALSE,'Medium',280,15,4.5),
('Gobi Manchurian','Veg Starter',180,TRUE,'Medium',450,15,4.5),
('Paneer 65','Veg Starter',200,TRUE,'High',500,18,4.6),
('Baby Corn Fry','Veg Starter',190,TRUE,'Medium',420,15,4.4),
('Mushroom Fry','Veg Starter',210,TRUE,'Medium',430,16,4.5),
('Punugulu','Veg Starter',120,TRUE,'Medium',300,10,4.3),
('Garelu','Veg Starter',130,TRUE,'Medium',320,10,4.4),
('Chicken 65','Non Veg Starter',240,FALSE,'High',550,18,4.7),
('Apollo Fish','Non Veg Starter',280,FALSE,'Medium',520,20,4.6),
('Chicken Majestic','Non Veg Starter',260,FALSE,'High',580,18,4.7),
('Chilli Chicken','Non Veg Starter',250,FALSE,'High',560,17,4.6),
('Veg Biryani','Veg Biryani',220,TRUE,'Medium',650,20,4.5),
('Paneer Biryani','Veg Biryani',240,TRUE,'Medium',700,22,4.6),
('Mushroom Biryani','Veg Biryani',230,TRUE,'Medium',680,20,4.5),
('Kaju Biryani','Veg Biryani',260,TRUE,'Medium',720,22,4.6),
('Chicken Biryani','Non Veg Biryani',280,FALSE,'High',900,25,4.8),
('Chicken Dum Biryani','Non Veg Biryani',300,FALSE,'High',950,28,4.8),
('Mutton Biryani','Non Veg Biryani',350,FALSE,'High',1000,30,4.9),
('Natukodi Biryani','Non Veg Biryani',330,FALSE,'High',950,28,4.8),
('Prawn Biryani','Non Veg Biryani',340,FALSE,'High',920,26,4.8),
('Fish Biryani','Non Veg Biryani',320,FALSE,'High',880,25,4.7);

select *
from pakka_telugu_menu
where price>250;   

select *
from pakka_telugu_menu
where price<150;

select *
from pakka_telugu_menu
where rating>4.6;

select *
from pakka_telugu_menu
where calories<=300;

select *
from pakka_telugu_menu
where spice_level !="high";

select *
from pakka_telugu_menu
where spice_level !="low";

select *
from pakka_telugu_menu
where preparation_time>20;

select *
from pakka_telugu_menu
where price>250 and rating>4.6;

select *
from pakka_telugu_menu
where is_veg and spice_level="medium";                      

select *
from pakka_telugu_menu
where category="veg starter" and calories<400;                        
    

select *
from pakka_telugu_menu
where category="non veg starter" and rating>4.6;                      

select *
from pakka_telugu_menu
where price<200 or rating>4.7;                           

select *
from pakka_telugu_menu
where spice_level="high" and calories>500; 

select *
from pakka_telugu_menu
where category="veg biryani" and price>230;                       

select *
from pakka_telugu_menu
where price between 200 and 300;

select *
from pakka_telugu_menu
where rating between 4.5 and 4.8; 

select *
from pakka_telugu_menu
where calories between 400 and 700;

select *
from pakka_telugu_menu
where preparation_time between 10 and 20;

select *
from pakka_telugu_menu
where category in("veg soup","non veg soup");

select *
from pakka_telugu_menu
where category in("veg biryani","non veg biryani");

select *
from pakka_telugu_menu
where spice_level in("medium","high");

select *
from pakka_telugu_menu
where category not in("veg soup","non veg soup");

select *
from pakka_telugu_menu
where spice_level not in("low");

select *
from pakka_telugu_menu
where item_name like "c%";

select *
from pakka_telugu_menu
where item_name like "m%";

select *
from pakka_telugu_menu
where item_name like "%chicken%";

select *
from pakka_telugu_menu
where item_name like "%soup";

select *
from pakka_telugu_menu
where category="non veg biryani" and rating>4.7;

select *
from pakka_telugu_menu
where is_veg and price<200 and rating>4.3;

                              -- intermediate questions-- 

select *
from pakka_telugu_menu
where price between 200 and 350 and spice_level="high" and category in ("non veg starter","non veg biryani");

select *
from pakka_telugu_menu
where price>200 and rating>4.5 and category not in("veg soup");

select *
from pakka_telugu_menu
where item_name like "%chicken%" and price<300 and spice_level in ("medium","high");

select *
from pakka_telugu_menu
where is_veg and calories between 200 and 700 and price<=250;

select *
from pakka_telugu_menu
where rating>=4.6 and preparation_time<25 and category in ("veg starters","non veg starters");
 
select *
from pakka_telugu_menu
where (price>250 or calories>800) and spice_level !="low";

select *
from pakka_telugu_menu
where item_name like "c%" and rating>4.5 and category in ("non veg starter","non veg biryani");

select *
from pakka_telugu_menu
where price between 150 and 300 and calories<600 and category not in ("veg soup");

select *
from pakka_telugu_menu
where spice_level="high" and rating between 4.5 and 5 and price>200;

select *
from pakka_telugu_menu
where category like "%biryani%" and price>=250 and rating>4.6;