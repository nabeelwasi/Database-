create database db1

/*query 1 */
create table Employee 
(Emp_Name varchar(255),Emp_No int,Dept_Name varchar(255),Dept_No int,Date_of_Join varchar(255));
select * from Employee

/*query 2 */
create view Empview As Select Emp_Name, Emp_no, Dept_Name, Dept_No From Employee
select * from Empview

/* Insertion */
insert into Empview (Emp_Name, Emp_no, Dept_Name, Dept_No) values ('Ravi','124', 'ECE','89');
insert into Empview (Emp_Name, Emp_no, Dept_Name, Dept_No) values ('Vijay','345', 'CSE','21');
insert into Empview (Emp_Name, Emp_no, Dept_Name, Dept_No) values ('Raj','90', 'IT','22');
insert into Empview (Emp_Name, Emp_no, Dept_Name, Dept_No) values ('Giri','100', 'CSE','67');
insert into Empview (Emp_Name, Emp_no, Dept_Name, Dept_No) values ('Sri','120', 'CSE','67');
select * from Empview

/*query 3 */
delete Empview where Emp_Name = 'Sri';
select * from Empview

/*query 4 */
update Empview set Emp_Name = 'Kavi' where Emp_Name = 'Ravi'
select * from Empview

/*query 5 */
create view Emp_view1 As select Emp_No, Dept_Name from Empview;
Select * from Emp_view1

/*query 6 */
Drop view Empview