create database center
use center
create table customers (productname varchar(50), price int, customername varchar(50),
contactname varchar(50),[customer id] int,cities varchar(50),country varchar(50),
persons varchar(50))

insert into customers values ('chais','18','saad','ahmed','33','berlin','pakistan','raza')
/*Task 1*/
select productname, price, 0.25*price+price as [0.25*price+price]
from customers

/*Task 2*/
select customername as customer , contactname as [contact person]
from customers

/*Task 3*/
select [customer id] from customers
where [customer id] between 20 and 40;


/*Task 4*/
select * from customers
where cities in ('paris','berlin','london')

/*Task 5*/
select persons from customers
where persons like '___a%'

/*Task 6*/
select customername, country
FROM customers
where country not in ('germany','uk')