create database dbinfo
use dbinfo
create table products ([supplier id] int,price int,name varchar(50),
quantity int)
insert into products values ('0066','7000','loren','11')
select MAX(salary) as salary from employee
select AVG(salary) as salary from employee
select MIN(salary) as salary from employee
select COUNT(salary) as salary from employee
select SUM(salary) as salary from employee
select * from employee
select * from products
select SUM(salary),dept from employee 
group by dept







select AVG(price)as [price average] from products /* Task 1 */



select MAX(price)as [Maximum price] from products /* Task 2 */


 /* Task 3 */
select sum(price) as [Sum Price]from products
group by [supplier id]


 /* Task 3 */
 /* Task 4 */
 
select AVG(price) as [Average price] from products
HAVING avg(price) > 25

/* Task 4 */
/* Task 5 */
select price,name,max(quantity) from products  
group by price
having quantity > 5;
/* Task 5 */
SELECT price,quantity
FROM products
GROUP BY price
HAVING quantity > 5;

SELECT sum(quantity)as[quantity], price
FROM products
GROUP BY price
HAVING sum(quantity) > 5;
