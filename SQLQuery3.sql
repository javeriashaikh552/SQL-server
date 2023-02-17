create database office_system;
use office_system;

create table employee(
id int primary key  identity(1,1),
[name] varchar(100) not null,
age varchar(70) not null,
[address] varchar(70) not null,
email varchar(70) not null,
[password] varchar(40) not null
);

select * from employee;

insert into employee values('ali','33','karachi','abc@gmail.com','1234yyuv');
insert into employee values('weheed','44','UK','wheed123@gmail.com','assallk');
insert into employee values('zain','87','USA','zain@gmail.com','vaagfr');
insert into employee values('wakars','39','lahore','abc1234@gmail.com','0098u77y6');

create table customer_system(
id int primary key  identity(1,5),
employee_id int not null,
customer_id int not null,
[name] varchar(100) not null,
age int not null,
[address] varchar(70) not null,
foreign key (employee_Id) references employee(id),
email varchar(70) not null
);

select * from customer_system;

insert into customer_system values(001,111,'saran','22','karachi','abc@gmail.com');
insert into customer_system values(002,112,'ali','22','karachi','1223@gmail.com');
insert into customer_system values(003,113,'zara','22','karachi','def@gmail.com');
insert into customer_system values(004,114,'zain','22','karachi','zain@gmail.com');



select employee.[name] ,employee.[address],customer_system.[customer_id]
from employee
inner join customer_system
on employee.id = customer_system.customer_id;




select * from customer_system where customer_id=113;







create table vender_detail(
id int primary key  identity(1,3),
[vender_name] varchar(100) not null,
price int not null,
[address] varchar(70) not null,
email varchar(70) not null
);

select * from vender_detail;

insert into vender_detail values('ali','3300','karachi','abc@gmail.com');
insert into vender_detail values('weheed','4400','UK','wheed123@gmail.com');
insert into vender_detail values('zain','8788','USA','zain@gmail.com');
insert into vender_detail values('wakars','3977','lahore','abc1234@gmail.com');

create table employee_detail(
id int primary key  identity(1,5),
employ_id int not null,
vender_id int not null,
[name] varchar(100) not null,
[address] varchar(70) not null,
foreign key (vender_id) references vender_detail(id),
email varchar(70) not null
);

select * from employee_detail;

insert into employee_detail values(111,101,'saran','karachi','abc@gmail.com');
insert into employee_detail values(112,102,'saran','karachi','abc@gmail.com');
insert into employee_detail values(113,103,'saran','karachi','abc@gmail.com');



