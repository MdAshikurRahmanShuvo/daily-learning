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

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (6,'Shawon','Dhaka',145000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (7,'Sabbir','Chittagong',35000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (8,'Polash','Rajshahi',18000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (9,'Shuvo','Dhaka',75000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (10,'Shakil','Dhaka',50000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (11,'Rafi','Dhaka',32000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (12,'Nayeem','Sylhet',41000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (13,'Tanvir','Dhaka',88000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (14,'Rakib','Rajshahi',27000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (15,'Hasan','Khulna',60000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (16,'Siam','Dhaka',15000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (17,'Fahim','Chittagong',72000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (18,'Jubayer','Sylhet',39000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (19,'Mehedi','Dhaka',51000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (20,'Arif','Khulna',45000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (21,'Rony','Dhaka',30000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (22,'Bappi','Rajshahi',20000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (23,'Kamal','Chittagong',95000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (24,'Sohel','Dhaka',47000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (25,'Nabil','Sylhet',52000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (26,'Tarek','Dhaka',61000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (27,'Emon','Khulna',28000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (28,'Sohan','Dhaka',99000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (29,'Farhan','Chittagong',43000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (30,'Adnan','Rajshahi',37000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (31,'Ashik','Dhaka',28000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (32,'Rafi','Dhaka',32000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (33,'Sabbir','Chittagong',35000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (34,'Nayeem','Sylhet',41000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (35,'Karim','Dhaka',50000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (36,'Rahim','Dhaka',50000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (37,'Jamal','Khulna',50000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (38,'Ashik','Chittagong',60000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (39,'Shuvo','Dhaka',75000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (40,'Imtiaz','Khulna',57000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (41,'Rahim','Dhaka',30000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (42,'Rahim','Chittagong',45000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (43,'Rahim','Khulna',55000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (44,'Karim','Dhaka',25000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (45,'Karim','Sylhet',47000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (46,'Sabbir','Dhaka',38000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (47,'Sabbir','Rajshahi',62000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (48,'Rony','Dhaka',40000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (49,'Babul','Chittagong',40000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (50,'Kader','Khulna',40000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (51,'Sumon','Dhaka',70000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (52,'Jewel','Sylhet',70000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (53,'Noman','Rajshahi',55000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (54,'Habib','Dhaka',55000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (55,'Unknown','Dhaka',55000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (56,'Ashik','Dhaka',55000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (57,'Mehedi Hasan Shobuj','Rajshahi',55000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (58,'Sheab','Dhaka',55000);


INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (59,'Rahim','Dhaka',52000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (60,'Karim','Chittagong',48000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (61,'Jamal','Khulna',47000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (62,'Kamal','Sylhet',51000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (63,'Sabbir','Barisal',46000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (64,'Tanvir','Dhaka',53000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (65,'Nayeem','Rajshahi',49000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (66,'Fahim','Rangpur',45000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (67,'Rafi','Dhaka',54000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (68,'Shakil','Khulna',47000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (69,'Imran','Sylhet',52000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (70,'Sohel','Barisal',46000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (71,'Rakib','Dhaka',55000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (72,'Biplob','Chittagong',48000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (73,'Sumon','Rajshahi',50000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (74,'Masud','Khulna',47000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (75,'Rony','Sylhet',51000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (76,'Sakib','Dhaka',56000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (77,'Anik','Rangpur',45000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (78,'Mizan','Barisal',46000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (79,'Hasib','Dhaka',53000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (80,'Arif','Chittagong',49000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (81,'Naim','Rajshahi',50000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (82,'Shohag','Khulna',47000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (83,'Rasel','Sylhet',52000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (84,'Jahid','Dhaka',55000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (85,'Liton','Rangpur',45000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (86,'Monir','Barisal',46000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (87,'Faruk','Dhaka',54000);
INSERT INTO Employee_info(EmpID,EmpName,City,Salary) VALUES (88,'Habib','Chittagong',48000);

INSERT INTO Employee_info(EmpID,EmpName,City,Salary)
VALUES
(89,'Test1','Dhaka',50000),
(90,'Test2','Khulna',48000),
(91,'Test3','Sylhet',51000);
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
INSERT INTO Department(DeptID, DeptName, EmpID) VALUES (106, 'HR', 6);
INSERT INTO Department VALUES (107, 'IT', 7);
INSERT INTO Department VALUES (108, 'Accounts', 8);
INSERT INTO Department VALUES (109, 'Marketing', 9);
INSERT INTO Department VALUES (110, 'Sales', 10);
INSERT INTO Department VALUES (111, 'Finance', 11);
INSERT INTO Department VALUES (112, 'Admin', 12);
INSERT INTO Department VALUES (113, 'Support', 13);
INSERT INTO Department VALUES (114, 'HR', 14);
INSERT INTO Department VALUES (115, 'IT', 15);

INSERT INTO Department VALUES (116, 'Accounts', 16);
INSERT INTO Department VALUES (117, 'Marketing', 17);
INSERT INTO Department VALUES (118, 'Sales', 18);
INSERT INTO Department VALUES (119, 'Finance', 19);
INSERT INTO Department VALUES (120, 'Admin', 20);
INSERT INTO Department VALUES (121, 'Support', 21);
INSERT INTO Department VALUES (122, 'HR', 22);
INSERT INTO Department VALUES (123, 'IT', 23);
INSERT INTO Department VALUES (124, 'Accounts', 24);
INSERT INTO Department VALUES (125, 'Marketing', 25);

INSERT INTO Department VALUES (126, 'Sales', 26);
INSERT INTO Department VALUES (127, 'Finance', 27);
INSERT INTO Department VALUES (128, 'Admin', 28);
INSERT INTO Department VALUES (129, 'Support', 29);
INSERT INTO Department VALUES (130, 'HR', 30);
INSERT INTO Department VALUES (131, 'IT', 31);
INSERT INTO Department VALUES (132, 'Accounts', 32);
INSERT INTO Department VALUES (133, 'Marketing', 33);
INSERT INTO Department VALUES (134, 'Sales', 34);
INSERT INTO Department VALUES (135, 'Finance', 35);

INSERT INTO Department VALUES (136, 'Admin', 36);
INSERT INTO Department VALUES (137, 'Support', 37);
INSERT INTO Department VALUES (138, 'HR', 38);
INSERT INTO Department VALUES (139, 'IT', 39);
INSERT INTO Department VALUES (140, 'Accounts', 40);
INSERT INTO Department VALUES (141, 'Marketing', 41);
INSERT INTO Department VALUES (142, 'Sales', 42);
INSERT INTO Department VALUES (143, 'Finance', 43);
INSERT INTO Department VALUES (144, 'Admin', 44);
INSERT INTO Department VALUES (145, 'Support', 45);

INSERT INTO Department VALUES (146, 'HR', 46);
INSERT INTO Department VALUES (147, 'IT', 47);
INSERT INTO Department VALUES (148, 'Accounts', 48);
INSERT INTO Department VALUES (149, 'Marketing', 49);
INSERT INTO Department VALUES (150, 'Sales', 50);
INSERT INTO Department VALUES (151, 'Finance', 51);
INSERT INTO Department VALUES (152, 'Admin', 52);
INSERT INTO Department VALUES (153, 'Support', 53);
INSERT INTO Department VALUES (154, 'HR', 54);
INSERT INTO Department VALUES (155, 'IT', 55);

INSERT INTO Department VALUES (156, 'Accounts', 56);
INSERT INTO Department VALUES (157, 'Marketing', 57);
INSERT INTO Department VALUES (158, 'Sales', 58);



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


--Create Index Read & Search r speed varai fast kaj kora onek fast data show kora Ar fast Scan kora
use ashikdb;
Create Index MyIndex
on employee(EmpName);
SELECT * 
FROM employee
WHERE EmpName = 'Ashik';

--For Multiple column set as a index
Create Index Myindex2
on employee(EmpName,Salary);


--Delete Index
Drop INDEX employee.Myindex2;


--Create Backup Table or Copy and paste Data from one to another table(full table copy)
select * into backup_employee
from employee;

select * from backup_employee;


--Create Backup Table or Copy and paste Data from one to another table(Specific Column copy)
Select EmpName,Salary into backup_employee2
from employee;

Select * from backup_employee2;



--For Visualize top datas
Select Top 5 * from employee; --it shows top 5 rows data

Select top 50 percent * from employee; --it shows first 50% data

Select top 90 percent * from employee; --it shows first 90% datas

--Top with where
Select top 80 percent * from employee
where Salary>70000;


--For backup Database in Disk 
backup database ashikdb
to disk='C:\Users\ASUS\Desktop\Database_backup\amit_tutorial.bak';


--Restore the backupdatabase
Restore Database ashikdb_copy
From disk='C:\Users\ASUS\Desktop\Database_backup\amit_tutorial.bak'
with replace;



--Show View (Virtual table of main table)
use ashikdb;
create view  [employee Dhaka City] 
AS
Select EmpName,City,Salary
from employee
where City='Dhaka';

select * from [employee Dhaka City];
Select EmpName,Salary from [employee Dhaka City];


create view [employee 80000 Salary] 
AS
Select * from employee
where Salary>80000;

select * from [employee 80000 Salary];
select * from [employee Dhaka City];


--Delete View
Drop View [employee Dhaka City];

select * from [employee Dhaka City];


create table abc(
	id int,
	name varchar(255)
	);

--Delete a table
Drop table abc;

select * from abc;


--LEFT JOIN
Select E.EmpName,D.DeptName,E.Salary
From Employee_info E
LEFT JOIN Department D
ON E.EmpID=D.EmpID;


Select * 
From Employee_info E
Left Join Department D
On  E.EmpID=D.EmpID;


--Right Join
Select E.EmpName,D.DeptName,E.Salary
From Employee_info E
Right Join 
Department D
On E.EmpID=D.EmpID;

--Full Join
Select * 
From Employee_info E
Full Join Department D
on E.EmpID=D.EmpID;


--Self Join
SELECT A.EmpName, B.EmpName AS Manager
FROM employee A
JOIN employee B
ON A.ID = B.ID;