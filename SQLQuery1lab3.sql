create database db
use db
create table productnew (productname varchar(50), [customer id] int, price int)
select * from employee as emp
select employee  as ename from employee
insert into producttab values ('chais',18) ,('chang',19)
select employee, salary, 12*salary+100 as [12*salary+100]
from employee;
select * from employee where salary between 600 and 800
select * from employee where salary in (500, 600)
select * from employee where employee like '&%'
select * from employee where employee like '_i%'
select * from employee 
where employee like 'a%';
select * from employee 
where employee like '%a';
select * from employee 
where employee like '%or%';
select * from employee 
where employee like '_r%';
select * from employee 
where employee like 'a_%_%';
select * from employee 
where employee like 'a%o';
select * from employee 
where employee not like 'a%';
select * from employee where employee= 'talha' and salary='1200';
select * from employee where employee= 'talha' and salary='100';
select * from employee where employee= 'talha' or salary='600';
select * from employee where not employee='all'



//task1start
select productname, price, 0.25*price+price as [0.25*price+price]
from producttab//tablenamechange;
//task1end


//task2start
create table customers1 (customername varchar(50), contactname varchar(50))
insert into customers1 values ('chais','mark') ,('chang','john')
select customername as customer , contactname as [contact person]
from customers1;
//task2end


//task3start
create table productnew (productname varchar(50), [customer id] int, price int)
insert into  productnew values ('chais',199,'22') ,('chang',33,'33'),('chais',38,'44'
) ,('chang',50,'66')
select * from productnew
where [customer id] between 20 and 40;
//task3end

//task4start
create table customers1 (customername varchar(50), cities varchar(50))
insert into customers1 values ('chais','paris') ,('chang','london'),
('chob','karachi'),('cron','berlin')
select * from customers1
where cities in ('paris','berlin','london');
//task4end

//task5start
create table persontable (person varchar(50))
insert into persontable values ('raza'),('maha'),('chais'),('cais')
select * from persontable
where person like '___a%';
//task5end

//task6start
create table customers12 (customername varchar(50), country varchar(50))
insert into customers12 values ('chais','uk') ,('chang','germany'),
('chobx','pakistan'),('cron','usa')
select customername, country
FROM customers12
where country not in ('germany','uk');
//task6end