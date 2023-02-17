CREATE DATABASE onlinesystem;
use onlinesystem;

create table onlineData(
id int primary key  identity(1,1),
username varchar(55) not null,
email varchar(100) not null,
pass varchar(33) not null,
);


select * from onlineData;


create proc deleteonline
as
delete from onlineData where id=1;
exec deleteonline;


INSERT INTO onlineData
VALUES ('ali','faran@gmail.com','kkkk'), 
('shakli','i123@gmail.com','nnjhmmk'), 
('weheed','weheed123@gmail.com','1234');


create proc deleteonline4
as
delete from onlineData where id=5;
exec deleteonline4;














create proc insertonlineData
@username varchar(55),
@email varchar(100),
@pass varchar(33),
@id int
as

insert into onlineData values (@username,@email,@pass); 

exec selectonlineData
exec insertonlineData

exec insertonlineData @username='ahmed', @email='ahmed@gmail.com' , @pass='1234567'



