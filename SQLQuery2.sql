CREATE DATABASE school;
use school;

create table student_Data(
id int primary key  identity(1,5),
[name] varchar(100) not null,
age int not null,
[address] varchar(77)
);


create table studentMarks(
id int primary key  identity(1,1),
studentId int,
studentMarks int,
foreign key (studentId) references student_Data(id),
);


insert into student_Data values('abbas',22,'karachi');
insert into student_Data values('ALI',24,'LAHORE');
insert into student_Data values('ZAIN',29,'USA');

select * from student_Data;
select * from studentMarks;
insert into studentMarks values(6,70);

select student_Data.[name] ,student_Data.[address],studentMarks.[studentMarks]
from student_Data
inner join studentMarks
on student_Data.id = studentMarks.studentId;


ALTER TABLE student_Data DROP COLUMN age;
DROP TABLE student_Data;