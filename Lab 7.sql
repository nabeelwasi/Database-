create database information
use information
create table orders([o_id] int NOT NULL, orderno int NOT NULL, p_id int);
create table persons([p_Id] int NOT NULL,Firstname nvarchar(255),Lastname nvarchar(255),
[Address] nvarchar(255),city nvarchar(255));
select * from orders
select * from persons
insert into orders values('5','53555','2');
insert into persons values('3','aqeel','mukhtar','saddar','lahore');

/* Query 2 */
SELECT Persons.lastname, Persons.firstname, Orders.orderno
FROM Persons
LEFT JOIN Orders
ON Persons.p_Id = Orders.p_Id
ORDER BY Persons.lastname;

/* Query 3 */
SELECT Persons.lastname, Persons.firstname, Orders.orderno
FROM Persons
FULL OUTER JOIN Orders
ON Persons.p_Id = Orders.p_Id
ORDER BY Persons.lastname;


/* Query 4 */
SELECT Persons.lastname,Persons.Firstname,Orders.orderno
FROM persons
RIGHT OUTER JOIN Orders
ON Persons.p_Id = Orders.p_Id
ORDER BY Persons.lastname;

/* Query 5 */
SELECT Persons.lastname, Persons.firstname, Orders.orderno
FROM Persons
INNER JOIN orders
ON Persons.p_Id = Orders.p_Id
ORDER BY Persons.lastname;

