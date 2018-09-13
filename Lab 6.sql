create database info
use info

/* QUERY: 01 */
create table employee (Empno int, Ename varchar(255), Designation varchar(255),
Salary int);


select * from employee

/* QUERY: 02 */
insert into employee (Empno, Ename, Designation, Salary) Values ('101', 'Ali', 'Lecturer', '15000');
insert into employee (Empno, Ename, Designation, Salary) Values ('102', 'Asim', 'Lecturer', '15000');
insert into employee (Empno, Ename, Designation, Salary) Values ('103', 'Saad', 'Asst.Prof', '20000');
insert into employee (Empno, Ename, Designation, Salary) Values ('104', 'Fawwad', 'Prof', '45000');


/* QUERY: 03*/
insert into employee (Empno, Ename) values ('105', 'Ayesha');
select Empno, Ename from employee

/* QUERY: 4*/
/* QUERY: 5*/
update employee set Salary = '17000' where Empno = 101;
select * from employee
update employee set Designation = 'Asst.Prof', Salary = '20000' where Empno = 102;
select * from employee


/* QUERY: 6*/
delete from employee where Empno = 103;
select * from employee