create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customers(
	customer_id int primary key,
    customer_name varchar(200),
    customer_age int
);

create table orders(
	order_id int primary key,
    customer_id int,
    order_date date,
    order_total_price double,
    foreign key (customer_id) references customers(customer_id)
);

create table products(
	product_id int primary key,
    product_name varchar(200),
    product_price double
);

create table order_details(
	order_id int,
    product_id int,
    quantity int,
    primary key(order_id, product_id),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);

INSERT INTO customers (customer_id, customer_name, customer_age) VALUES
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

INSERT INTO orders (order_id, customer_id, order_date, order_total_price) VALUES
(1, 1, '2006-03-21', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);

INSERT INTO products (product_id, product_name, product_price) VALUES
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(2, 2, 1),
(3, 1, 8),
(3, 3, 3),
(3, 5, 4);



-- bài tập ss3 
select o.order_id, o.order_date, o.order_date 
from orders o;

select c.customer_id ,c.customer_name, p.product_name
from customers c join orders o on c.customer_id = o.customer_id
join order_details on order_details.order_id = o.order_id
join products p on p.product_id = order_details.product_id;

SELECT c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_details od ON o.order_id = od.order_id
WHERE od.order_id IS NULL;

select c.customer_name
from customers c left join orders o on c.customer_id = o.customer_id
where o.order_id is null;

select o.order_id, o.order_date, sum(od.quantity*p.product_price) as total_price
from orders o join order_details od on o.order_id = od.order_id
join products p on p.product_id = od.product_id
group by o.order_id, o.order_date;



