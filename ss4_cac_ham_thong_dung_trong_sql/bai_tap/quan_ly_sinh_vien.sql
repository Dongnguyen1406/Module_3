create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;

create table classes(
	class_id int primary key auto_increment,
    class_name varchar(60) not null,
    start_date datetime not null,
    status bit
);

INSERT INTO classes
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO classes
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO classes
VALUES (3, 'B3', current_date, 0);

create table students(
	student_id int primary key auto_increment,
    student_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    student_status bit,
    class_id int not null,
    foreign key (class_id) references classes(class_id)
);

INSERT INTO students (student_name, address, phone, student_status, class_id)
VALUES ('A hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO students (student_name, address, student_status, class_id)
VALUES ('B Hoa', 'Hai phong', 1, 1);
INSERT INTO students (student_name, address, phone, student_status, class_id)
VALUES ('C Manh', 'HCM', '0123123123', 0, 2);

SELECT *
FROM students where student_status = true;

create table subjects(
	subject_id int primary key auto_increment,
    subject_name varchar(30) not null,
    credit tinyint not null default 1 check (credit >=1),
    subject_status bit(1) default 1
);

INSERT INTO subjects
VALUES (1, 'CF', 5, 1),
 (2, 'C', 6, 1),
 (3, 'HDJ', 5, 1),
 (4, 'RDBMS', 10, 1);

select * from subjects where credit < 10;

create table marks(
	mark_id int primary key auto_increment,
    subject_id int not null,
    student_id int not null,
    mark float default 0 check (mark >= 0 and mark <= 100),
    exam_times tinyint default 1,
    unique (subject_id, student_id),
    foreign key (subject_id) references subjects(subject_id),
    foreign key (student_id) references students(student_id)
);

INSERT INTO marks (subject_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
 (1, 2, 12, 2),
 (2, 1, 12, 1);


 -- Thực hành
 select s.student_id, s.student_name, c.class_name
 from students s join classes c on s.class_id = c.class_id; 
 
 select s.student_id, s.student_name, c.class_name
 from students s join classes c on s.class_id = c.class_id 
 where c.class_name = "A1";
 
 select s.student_id, s.student_name, sub.subject_name, m.mark
 from students s join marks m on s.student_id = m.student_id join subjects sub on m.subject_id = sub.subject_id;

select s.student_id, s.student_name, sub.subject_name, m.mark
 from students s join marks m on s.student_id = m.student_id join subjects sub on m.subject_id = sub.subject_id;

select s.student_id, s.student_name, sub.subject_name, m.mark
from students s join marks m on s.student_id = m.student_id join subjects sub on m.subject_id = sub.subject_id
where sub.subject_name = "CF";


-- Bài tập
select * from students
where student_name like 'h%';

select * from classes
where month(start_date) = 12;

select * from subjects
where credit >= 3 and credit <= 5;

SET SQL_SAFE_UPDATES = 0;

update students set class_id = 2
where student_name = 'Hung';

select s.student_name, sub.subject_name, m.mark
from students s join marks m on s.student_id = m.student_id
join subjects sub on sub.subject_id = m.subject_id
order by m.mark desc, s.student_name; 












