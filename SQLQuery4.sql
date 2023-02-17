CREATE DATABASE CL;
use CL;

create table online_business(
id int primary key  identity(1,1),
employname varchar(11) not null,
email varchar(100) not null,
[password] varchar(33) not null,
[address] varchar(100) not null,
age int not null
);
select * from online_business;

INSERT INTO online_business 
VALUES ('ali','faran@gmail.com','kkkk','karachi DHA',22), 
('shakli','i123@gmail.com','nnjhmmk','lahore DHA',53), 
('weheed','weheed123@gmail.com','1234','pakistan ',63);


create proc insertonline_business
as
select * from online_business;
exec insertonline_business;










delete from  online_business   where id=1;
delete from  online_business   where id=2;
