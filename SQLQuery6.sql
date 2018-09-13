create database mydb
use mydb
create table employee (employee varchar(50), salary int)
select * from employee as emp
select employee  as ename from employee
insert into employee values ('baig',150),('omer',460),('mohsin',40),('Haq',80) 
select employee, salary, 12*salary+100
from employee;
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

