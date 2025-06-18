USE student_management;
use student_management;
CREATE TABLE teachers(
	teacher_id int primary key,
    teacher_name varchar(200),
    teacher_age int,
    teacher_country varchar(50));
INSERT into teachers(teacher_id, teacher_name, teacher_age, teacher_country)
Value ('1', 'Tran Van Chanh', 30, 'Viet Nam'),
	('2', 'Truong Tan Hai', '27', 'Viet Nam');
    
SELECT * From teachers;

CREATE TABLE students(
	student_id int primary key,
    student_name varchar(200),
    student_age int,
    student_country varchar(50)
);
INSERT into students(student_id, student_name, student_age, student_country)
Value ('1', 'Nguyen Tri Dong', 23, 'Viet Nam'),
	('2', 'Tran Thu thao', '25', 'Nhat Ban');

SELECT * From students;

CREATE TABLE classes(
	class_id int primary key,
    class_name varchar(200));
INSERT into classes(id, name)
Value ('001', 'C0225G1'),
	('002', 'C0325G1');
    
SELECT * From classes;