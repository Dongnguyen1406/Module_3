-- Bước 1
create database demo;
use demo;

-- Bước 2
create table products(
	id int primary key auto_increment,
    product_code varchar(20),
    product_name varchar(100),
    product_price double,
    product_amount double,
    product_description text,
    product_status boolean
);

INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES
('P001', 'Laptop Dell', 2000, 50, 'High-end laptop', true),
('P002', 'Laptop HP', 1800, 30, 'Business laptop', true),
('P003', 'Laptop Lenovo', 1700, 40, 'Gaming laptop', true),
('P004', 'Tablet iPad', 1500, 60, 'Apple tablet', true),
('P005', 'Phone Samsung', 900, 100, 'Flagship phone', true);

SELECT * FROM products;

-- Bước 3
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index idx_product_code 
on products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
alter table products add index idx_product_name_price(product_name, product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * 
from products 
where product_name = 'Laptop Dell Inspiron' and product_price = 15000000;

-- So sánh câu truy vấn trước và sau khi tạo index
-- trước khi tạo
explain select * 
from products
where product_code = 'P003';
-- tạo index
alter table products add index idx_product(product_code);
-- sau khi tạo index
explain select * from products where product_code = 'P003';

-- Bước 4
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view product_views as
select product_code, product_name, product_price, product_status
from products;

select * from product_views;

-- Tiến hành sửa đổi view
create or replace view product_views as
select product_code, product_name, product_price, product_status, product_amount
from products;

select * from product_views;

-- Tiến hành xóa view
drop view if exists product_views;

-- Bước 5
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure findAllProducts()
begin
	select * from products;
end //
delimiter ; 
call findAllProducts();

-- Tạo store procedure thêm một sản phẩm mới 
delimiter //
create procedure add_new_product(
p_code varchar(20), p_name varchar(100), p_price double, p_amount double, p_description text, p_status boolean
)
begin
	insert into products (product_code, product_name, product_price, product_amount, product_description, product_status)
    values(p_code, p_name, p_price, p_amount, p_description, p_status);
end //
delimiter ;
call add_new_product('P1001', 'Laptop Dell Inspiron', 15000000, 10, 'Laptop cấu hình mạnh cho sinh viên và văn phòng', TRUE);
call findAllProducts();

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure update_product_info(
IN p_id INT,
	IN p_code VARCHAR(20),
	IN p_name VARCHAR(100),
	IN p_price DOUBLE,
	IN p_amount DOUBLE,
	IN p_description TEXT,
	IN p_status BOOLEAN
)
begin
	UPDATE products
	SET 
		product_code = p_code,
		product_name = p_name,
		product_price = p_price,
		product_amount = p_amount,
		product_description = p_description,
		product_status = p_status
	WHERE id = p_id;
end //
delimiter ;
CALL update_product_info(1, 'P1001-UPD', 'Laptop Dell Inspiron - New', 14500000, 8, 'Laptop đã được cập nhật cấu hình và giảm giá', TRUE);
call findAllProducts();

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_product_by_id(in p_id int) 
begin
	delete from products
    where id = p_id;
end //
delimiter ;
call delete_product_by_id(1);
call findAllProducts();







