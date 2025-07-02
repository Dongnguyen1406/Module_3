create database demo_user;

use demo_user;

create table users ( 
      id int(3) NOT NULL AUTO_INCREMENT, 
      name varchar(120) NOT NULL, 
      email varchar(220) NOT NULL, 
      country varchar(120), 
      PRIMARY KEY (id) 
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
INSERT INTO users(name, email, country) VALUES('Ngọc', 'ngoc@gmail.com', 'Việt Nam');
INSERT INTO users(name, email, country) VALUES('David', 'david123@yahoo.com', 'USA');
INSERT INTO users(name, email, country) VALUES('Akira', 'akira@japan.jp', 'Japan');
INSERT INTO users(name, email, country) VALUES('Maria', 'maria89@brasil.com', 'Brazil');
INSERT INTO users(name, email, country) VALUES('John', 'john.doe@gmail.com', 'UK');
INSERT INTO users(name, email, country) VALUES('Linh', 'linh.pham@gmail.com', 'Vietnam');
INSERT INTO users(name, email, country) VALUES('Pierre', 'pierre@france.fr', 'France');
INSERT INTO users(name, email, country) VALUES('Sakura', 'sakura@tokyo.jp', 'Japan');
INSERT INTO users(name, email, country) VALUES('Ali', 'ali.khan@pk.net', 'Pakistan');
INSERT INTO users(name, email, country) VALUES('Chen', 'chen.lee@china.cn', 'China');