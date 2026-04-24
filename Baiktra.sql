create database ShopManager;

create table Categories(
	category_id int primary key, 
    category_name varchar(100)
);

create table Products (
	product_id int primary key ,
    product_name varchar(100),
    price decimal(15,2),
    stock int,
    category_id int 
);

insert into Categories (category_id,category_name)value
(1,'Điện tử'),(2,'Thời trang');

insert into Products (product_id,product_name,price,stock,category_id) value
(1,'iPhone 15',25000000 ,10 ,1),
(2,'Samsung S23',20000000,5 ,1),
(3,'Áo sơ mi nam',500000,50 ,2),
(4,'Giày thể thao',1200000 , 20 ,2);

SET SQL_SAFE_UPDATES = 0;
update Products set price = 26000000 where product_id=1;
update Products set stock = stock + 10 where category_id=1;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
delete from Products where product_id=4;
delete from Products where price < 1000000;
SET SQL_SAFE_UPDATES = 1;

SELECT * from products;
SELECT * FROM products WHERE stock > 15;
SELECT * FROM Products WHERE price BETWEEN 1000000 AND 25000000;
SELECT * FROM Products WHERE product_name <> 'iPhone 15' AND stock > 0;
SELECT * FROM Products WHERE category_id <> 1 AND price > 500000;


