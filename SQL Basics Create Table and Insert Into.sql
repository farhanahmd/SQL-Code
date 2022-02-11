
--Table 1 Query:
CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
) 

--Table 2 Query:
CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

--Table 1 Insert:
INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

--Table 2 Insert:
Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

--Table 1 Distinct Value:
Select Distinct(EmployeeID) From EmployeeDemographics
Select count (LastName) as LastNameCount from EmployeeDemographics

--Table 2 Derivative Value:
select * from EmployeeSalary
select max(Salary) as MaxSalary from EmployeeSalary
select min(Salary) as MinSalary from EmployeeSalary
select avg(Salary) as AvgSalary from EmployeeSalary

--Table 1 Where Statement:
select * from EmployeeDemographics where FirstName = 'Jim'
select * from EmployeeDemographics where FirstName <> 'Jim'
select * from EmployeeDemographics where Age > 30
select * from EmployeeDemographics where age <= 32 and Gender = 'Male'
select * from EmployeeDemographics where LastName Like 'S%'
select * from EmployeeDemographics where LastName Like '%S%'
select * from EmployeeDemographics where LastName Like 'S%t'
select * from EmployeeDemographics where FirstName is NOT NULL
select * from EmployeeDemographics where FirstName in ('Jim','Michael')

--Table 1 Group By Statement:
select Gender,Age, count(Gender) as GenderCount 
from EmployeeDemographics 
where Age >30 
Group By Gender, Age 
Order By GenderCount

--Table 1 Order By Statement:
select * from EmployeeDemographics order by Age Desc