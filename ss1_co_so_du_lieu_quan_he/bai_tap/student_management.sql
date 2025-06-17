USE student_management;
CREATE TABLE Teachers(
	id int,
    name varchar(50),
    age int,
    country varchar(50));
INSERT into Teachers(id, name, age, country)
Value ('1', 'Tran Van Chanh', 30, 'vienam'),
	('2', 'Truong Tan Hai', '27', 'vienam');
SELECT * From Teachers;
CREATE TABLE Class(
	id int,
    name varchar(50));
INSERT into Class(id, name)
Value ('001', 'C0225G1'),
	('002', 'C0325G1');
SELECT * From Class;