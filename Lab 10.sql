create database lab10
use lab10

CREATE TABLE  tbl_Students

(
    [Studentid] [int] IDENTITY(1,1) NOT NULL,
    [Firstname] [nvarchar](200) NOT  NULL,
    [Lastname] [nvarchar](200)  NULL,
    [Email] [nvarchar](100)  NULL
)
select * from tbl_Students

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Sidra', 'Rehman', 'sidra@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Zamal', 'Khurram', 'zamal@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Asim', 'Rao', 'asim@abc.com')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Zaigham', 'Khan', 'zaigham@abc.comm')

Insert into tbl_Students (Firstname, lastname, Email)
 Values('Virat', 'Kohli', 'virat@abc.com')
 
 
 
 /*  Getstudentname is the name of the stored procedure*/

Create  PROCEDURE Getstudentname(

@studentid INT                   --Input parameter ,  Studentid of the student 

)
AS
BEGIN
SELECT Firstname+' '+Lastname FROM tbl_Students WHERE studentid=@studentid 
END


/* 
GetstudentnameInOutputVariable is the name of the stored procedure which
uses output variable @Studentname to collect the student name returns by the
stored procedure
*/

Create  PROCEDURE GetstudentnameInOutputVariable
(

@studentid INT,                       --Input parameter ,  Studentid of the student
@studentname VARCHAR(200)  OUT        -- Out parameter declared with the help of OUT keyword
)
AS
BEGIN
SELECT @studentname= Firstname+' '+Lastname FROM tbl_Students WHERE studentid=@studentid
END


/* 
Stored Procedure GetstudentnameInOutputVariable is modified to collect the
email address of the student with the help of the Alert Keyword
*/ 

Alter  PROCEDURE GetstudentnameInOutputVariable
(

@studentid INT,                   --Input parameter ,  Studentid of the student
@studentname VARCHAR (200) OUT,    -- Output parameter to collect the student name
@StudentEmail VARCHAR (200)OUT     -- Output Parameter to collect the student email
)
AS
BEGIN
SELECT @studentname= Firstname+' '+Lastname, 
    @StudentEmail=email FROM tbl_Students WHERE studentid=@studentid
END


Execute Getstudentname 1
Exec Getstudentname 1

Execution of the Stored Procedure using the Output Parameter
If we want to execute the Stored procedure "GetstudentnameInOutputVariable" , then we first need to declare the variable to collect the output values. For example:

Declare @Studentname as nvarchar(200)   -- Declaring the variable to collect the Studentname
Declare @Studentemail as nvarchar(50)     -- Declaring the variable to collect the Studentemail
Execute GetstudentnameInOutputVariable 1 , @Studentname output, @Studentemail output
select @Studentname,@Studentemail      -- "Select" Statement is used to show the output from Procedure



 
