--Create a new database named 'ashikdb'.
create database ashikdb;
-- Use the newly created database.
use ashikdb;
--create a new table named employee
create table employee(
	ID int,
	EmpName varchar(255),
	City varchar(255),
	Salary int
);
--- Insert some sample data into the employee table.
insert into employee(ID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',28000);
--see the data in the employee table
select * from employee;
--insert more data into the employee table
insert into employee(ID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',90000);
insert into employee(ID,EmpName,City,Salary)
values(3,'Sheab','Dhaka',65000);
insert into employee(ID,EmpName,City,Salary)
values(4,'Izaz','Dhaka',45000);
insert into employee(Id,EmpName,City,Salary)
values(5,'Imtiaz','Khulna',57000);
insert into employee(Id,EmpName,City,Salary)
values(6,'Shawon','Dhaka',145000);
insert into employee(Id,EmpName,City,Salary)
values (7,'Sabbir','Chittagong',35000);
insert into employee(Id,EmpName,City,Salary)
values(8,'Polash','Rajshahi',18000);
insert into employee(Id,EmpName,City,Salary)
values(9,'Shuvo','Dhaka',75000);
insert into employee(Id,EmpName,City,Salary)
values(10,'Shakil','Dhaka',50000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (11,'Rafi','Dhaka',32000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (12,'Nayeem','Sylhet',41000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (13,'Tanvir','Dhaka',88000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (14,'Rakib','Rajshahi',27000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (15,'Hasan','Khulna',60000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (16,'Siam','Dhaka',15000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (17,'Fahim','Chittagong',72000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (18,'Jubayer','Sylhet',39000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (19,'Mehedi','Dhaka',51000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (20,'Arif','Khulna',45000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (21,'Rony','Dhaka',30000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (22,'Bappi','Rajshahi',20000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (23,'Kamal','Chittagong',95000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (24,'Sohel','Dhaka',47000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (25,'Nabil','Sylhet',52000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (26,'Tarek','Dhaka',61000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (27,'Emon','Khulna',28000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (28,'Sohan','Dhaka',99000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (29,'Farhan','Chittagong',43000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (30,'Adnan','Rajshahi',37000);


INSERT INTO employee(Id,EmpName,City,Salary) VALUES (31,'Ashik','Dhaka',28000);   -- same name + salary
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (32,'Rafi','Dhaka',32000);    -- duplicate
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (33,'Sabbir','Chittagong',35000); -- duplicate
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (34,'Nayeem','Sylhet',41000); -- duplicate

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (35,'Karim','Dhaka',50000);  -- same salary diff name
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (36,'Rahim','Dhaka',50000);  -- same salary
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (37,'Jamal','Khulna',50000); -- same salary

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (38,'Ashik','Chittagong',60000); -- same name diff city
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (39,'Shuvo','Dhaka',75000); -- duplicate
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (40,'Imtiaz','Khulna',57000); -- duplicate


INSERT INTO employee(Id,EmpName,City,Salary) VALUES (41,'Rahim','Dhaka',30000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (42,'Rahim','Chittagong',45000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (43,'Rahim','Khulna',55000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (44,'Karim','Dhaka',25000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (45,'Karim','Sylhet',47000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (46,'Sabbir','Dhaka',38000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (47,'Sabbir','Rajshahi',62000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (48,'Rony','Dhaka',40000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (49,'Babul','Chittagong',40000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (50,'Kader','Khulna',40000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (51,'Sumon','Dhaka',70000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (52,'Jewel','Sylhet',70000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (53,'Noman','Rajshahi',55000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (54,'Habib','Dhaka',55000);
INSERT INTO employee(Id,City,Salary) VALUES (55,'Dhaka',55000);

INSERT INTO employee(Id,EmpName,City,Salary) VALUES (56,'Ashik','Dhaka',55000);
INSERT INTO employee(Id,EmpName,City,Salary) VALUES (57,'Mehedi Hasan Shobuj','Rajshahi',55000);
INSERT INTO employee(Id,City,Salary) VALUES (57,'sheab','Dhaka',55000);

--see specific columns from the employee table
select ID,Salary from employee;

--For check Unique values
select distinct City from employee;

-- Show Data based on Condition
select ID,Salary
from employee
where Salary>=50000;

select *
from employee
where EmpName='Sabbir';

--Order by For Organize data ascending or descending 
--ascending order
select * from employee
order by  Salary;
--descending order
select * from employee 
order by Salary desc;
--string and number ascending together
select * from employee
order by City Desc,Salary Desc;

select * from employee
order by City,Salary;

--Multiple Conditon check But All condition should be True
select * from employee
where City='Rajshahi' AND Salary>50000;

--Multiple Conditon check where only one condition should be True
select * from employee
where city='Rajshahi' or Salary=200000;

select * from employee
where City='Panjab' OR Salary>=50000;

select * from employee
where City='Panjab' OR Salary>=500000;

--If condition False then Show Output
select * from employee
where not City='Dhaka'; --without Dhaka all cities information are displayed


--For multiple values condition check from one  columns
select * from employee
where city in('Rajshahi','Khulna'); --Here only Displayed Information for Rajshahi and Khulna

select * from employee
where EmpName in('Ashik','Rahim','Shobuj'); --Here Displayed Information Only for Ashik,Rahim,Shobuj

--If multiple conditon false then displayed
select * from employee
where city not in('Rajshahi','Khulna');

--Range(From 50000-90000) Salary Using Between
select * from employee
where Salary between 50000 AND 90000;

--not between(50000-90000 ar baira baki sob dekhaba)
select * from employee
where Salary not between 50000 AND 90000;

--Between use for string
select * from employee
where EmpName between 'Shobuj' AND 'Tarek'
Order by EmpName;


--Like Operator uses for showing specific chareacters.
--Which Name Starts with
Select * from employee
where EmpName LIKE 'A%';
--which Name Ends with j
select * from employee
where EmpName Like '%j';
--For Matching middle charecters
Select * from employee
where EmpName Like '_s%';

select * from employee
where EmpName Like'__e%';

--Which Charecters not starts with s
select * from employee
where EmpName not Like 'S%';

--For seeing Max salary option-1
select Max(Salary) as 'Maximum Salary'
From employee

--For seeing Max salary option-2

select * from employee
where Salary= (
	Select MAX(Salary) From employee

);


--For seeing Min salary option-1
Select Min(Salary) as 'Minimum Salary'
From employee;

--For seeing Min salary option-2
Select EmpName,Salary from employee
where Salary=(
	select Min(Salary) From employee);


--For Sum ALl Salary
select Sum(Salary) as 'Total Salary'
from employee;

--For Sum all salary with condition
select sum(Salary) as 'Total salary'
from employee
where Salary>=100000;

--For Average Salary
select AVG(Salary) as 'Average Salary'
from employee; 


--For Average Salary with condition
Select AVG(Salary) 
from employee
where Salary>=90000;


--For Count Rows option-1
Select count(EmpName) 
from employee;

--for count rows option-2
select count(*) 
from employee;

--For Count Rows With COndition
select count(EmpName) 
from employee
where Salary>=90000;



--Not Null Constraint null value dila error diba
create table employee_2(
	ID int NOT NULL,
	EmpName varchar(255) NOT NULL,
	City varchar(255),
	Salary int
	);

insert into employee_2(ID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',28000);
insert into employee_2(ID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',90000);

insert into employee_2(ID,City,Salary)
values(3,'Chittagong',90000); --shows error because Not null use kora hoyacha tai null value accept korch na



--Unique Constraint that means protita ID unique hota hba same id hola error dekhaaba
create table employee_3
(
	ID int NOT NULL UNIQUE,
	EmpName varchar(255),
	City varchar(255),
	Salary int,
	);

insert into employee_3(ID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',28000);
insert into employee_3(ID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',90000);

insert into employee_3(ID,EmpName,City,Salary)
values(3,'Tushar','Comilla',28000);
insert into employee_3(ID,EmpName,City,Salary)
values(2,'Chintiya','Chittagong',90000); --This shows error beacuse same id uses previous need unique id


--Primary Key Constraint ekta table  r jai column Primary key thaka ar value gola unique hoi
create table employee_4
(
	ID int NOT NULL PRIMARY KEY,
	EmpName varchar(255),
	City varchar(255),
	Salary int,
	);

insert into employee_4(ID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',28000);
insert into employee_4(ID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',90000);

insert into employee_4(ID,EmpName,City,Salary)
values(2,'Shawon','Comilla',120000); --it shows error beacuse ID=2 already uses for a primary key




--Foriegn key aita Onno ekta table r satha Primary key ar moddamoa connect thaka
--here Primary key -parent table
--here Foreign Key -child table

use ashikdb;
create table Employee_info(
	EmpID int NOT NULL Primary Key,
	EmpName Varchar(255) NOT NULL,
	City varchar(255),
	Salary int
)
insert into Employee_info(EmpID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',28000);
insert into Employee_info(EmpID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',90000);
insert into Employee_info(EmpID,EmpName,City,Salary)
values(3,'Sheab','Dhaka',65000);
insert into Employee_info(EmpID,EmpName,City,Salary)
values(4,'Izaz','Dhaka',45000);
insert into Employee_info(EmpID,EmpName,City,Salary)
values(5,'Imtiaz','Khulna',57000);


--DROP TABLE Employee_info;

create table Department(
	DeptID int NOT NULL PRIMARY KEY,
	DeptName varchar(255) NOT NULL,
	EmpID int FOREIGN KEY REFERENCES Employee_info(EmpID)
	);

insert into Department(DeptID, DeptName, EmpID)
values (101, 'HR', 1);

insert into Department(DeptID, DeptName, EmpID)
values (102, 'IT', 2);

insert into Department(DeptID, DeptName, EmpID)
values (103, 'Accounts', 3);

insert into Department(DeptID, DeptName, EmpID)
values (104, 'Marketing', 4);

insert into Department(DeptID, DeptName, EmpID)
values (105, 'Sales', 5);



--Join Table 
select E.EmpID,E.EmpName,D.DeptName,E.Salary 
from Employee_info E
JOIN Department D
On E.EmpID=D.EmpID;

--Check Constrainst  Uses to insert Specific values
create table employee_check(
	ID int NOT NULL PRIMARY KEY,
	EmpName Varchar(255) NOT NULL,
	City Varchar(255),
	Salary int check(Salary<20000)
	);

insert into employee_check(ID,EmpName,City,Salary)
values(1,'Ashik','Dhaka',18000);
insert into employee_check(ID,EmpName,City,Salary)
values(2,'Shobuj','Chittagong',9000);
insert into employee_check(ID,EmpName,City,Salary)
values(3,'Sheab','Dhaka',65000); --IT can't insert. It shows error. Because Salary is greater than 20000


--Order by ASC for sorting by ascending order(Choto thaka boro)
select * from employee
order by Salary asc;

--Order by ASC for sorting by descending order( boro thaka choto)
select * from employee
order by Salary desc;

--Add column in existing tables
use ashikdb;
select * from employee;
alter table employee
ADD Age int;

--For Delete Column
alter table employee
Drop Column Age;

Select * from employee;

--Update Record(single column)
Update employee
set City='Rajshahi'
where EmpName='Ashik';

select * from employee;

--Update Record(Multiple column)
Update employee
set EmpName='Mehedi Hasan Shobuj',City='Dhaka'
where ID=2;

select * from employee;


--Stored Procedured
Create Procedure AllRecords
AS
Select * from employee
Go;

exec AllRecords;



Create Procedure AllRecords67 @EmpName varchar(255)
AS
Select * from employee
where EmpName=@EmpName
Go

exec AllRecords67 @EmpName='Ashik';

Create Procedure AllRecords2
AS
select * from Employee_info
Go;

exec AllRecords2;
exec AllRecords;


--Stored Procedured With One Parameter
Create Procedure AllRecords3 @City varchar(255)
AS
select * from employee
where City=@City
Go

exec AllRecords3 @City='Dhaka';


--Stored Procedured With Multiple Parameter
Create Procedure AllRecords4 @City varchar(255),@EmpName varchar(255)
As
Select * from employee
where City=@City AND EmpName=@EmpName
Go

exec AllRecords4 @City='Dhaka',@EmpName='Ashik';
