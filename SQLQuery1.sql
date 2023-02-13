create database mydata;
use mydata;

create table student_marks(
id int primary key  identity(1,1),
[number] varchar(11) not null,
[name] varchar(100) not null,
grade varchar(100) not null
);




insert into student_marks values('95','ali','A');
insert into student_marks values('80','zain','B');
insert into student_marks values('63','weheed','C');
insert into student_marks values('90','warda','A');
insert into student_marks values('77','ali ahmad','B');

select * from student_marks;
select * from student_marks where number=90;

UPDATE student_marks SET [name]='ZAKIR', grade='C' ,number=70 where number=80  ;

select * from student_marks where [name]= 'weheed';

delete from  student_marks  where id=2;
delete from  student_marks  where id=4;
delete from  student_marks  where id=5;
delete from  student_marks  where id=3;

DROP * FROM student_marks where id = 5;






