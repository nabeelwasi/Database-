create database my
use my
create table employee (id int,name varchar(50),dept varchar(50),salary int,
city varchar(50))
create table products ([supplier id] int,price int,name varchar(50),
quantity varchar(50))
insert into employee values ('6','zara','accounts','1000','karachi')
insert into products values ('0021','15000','abdul ghaniwala','12')
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
select MAX(price) from products /* Task 2 */
 /* Task 3 */
select sum(price)from products
group by [supplier id]
 /* Task 3 */
 /* Task 4 */
select AVG(price) from products
HAVING avg(price) > 25;
/* Task 4 */
/* Task 5 */
select name,price,quantity from products  
group by price
having quantity > 5;
/* Task 5 */
SELECT name,price,quantity
FROM products
GROUP BY price
HAVING quantity > 5;

