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

