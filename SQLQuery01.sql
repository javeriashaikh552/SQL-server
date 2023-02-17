create database online;
use online;

create table usersData(
id int primary key  identity(1,1),
username varchar(11) not null,
email varchar(100) not null,
[password] varchar(33) not null,
[address] varchar(100) not null,
age int not null
);

select * from usersData;

create proc selectusersData
as
select * from usersData;
exec selectusersData;


insert into usersData values('ali','ali123@gmail.com','1234','karachi DHA',33);
insert into usersData values('zain','zain@gmail.com','1234','lahore DHA',22);
insert into usersData values('warda','warda@gmail.com','1234','karachi DHA',53);
