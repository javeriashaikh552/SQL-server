create database WH;
use WH;


create table WHHYData(
id int primary key  identity(1,1),
username varchar(11) not null,
email varchar(100) not null,
[password] varchar(33) not null,
[address] varchar(100) not null,
age int not null
);

select * from WHHYData;
create proc selectWHHYData
as
select * from WHHYData;
exec selectWHHYData;

insert into WHHYData values('ali','ali123@gmail.com','1234','karachi DHA',33);
insert into WHHYData values('zain','zain@gmail.com','HGYYT','lahore DHA',22);
insert into WHHYData values('warda','warda@gmail.com','NNHJFFY','karachi DHA',53);

create table studentData(
id int primary key  identity(1,1),
username varchar(11) not null,
email varchar(100) not null,
[password] varchar(33) not null,
[address] varchar(100) not null,
age int not null
);

select * from studentData;

create proc selectstudentdata
as
select * from studentData;

exec selectstudentdata;


insert into studentdata values('warda','warda@gmail.com','NNHJFFY','karachi DHA',53);