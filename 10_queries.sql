create table EMPLOYEE(
EmployeeID Serial primary key,
FirstName VARCHAR(50),
LastName VARCHAR (50),
Email VARCHAR (100),
PhoneNumber VARCHAR (15),
HireDate DATE,
Salary DECIMAL (10,2),
DepartmentID int,
IsActive BOOLEAN,
JobTitle varchar (100)
)
SELECT * FROM EMPLOYEE

insert into EMPLOYEE(FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,IsActive,JobTitle) 
values('Virat','Kohli','virat.kohli@example.com','8797897582','16-02-2019',58000,2,'No','Data Anlyst'),
	('Sagar','Sharma','sagar.sharma@example.com','9785897582','10-12-2019',44000,4,'Yes','Project Manager'),
('Akash','Deep','Akash.deep@example.com','8787965882','25-06-2018',65200,1,'No','Sales Manager'),
('Ishan','Singh','ishan.singh@example.com','7878458796','06-05-2019',39000,3,'No','Graphic Designer'),
('Rohit','Batra','Rohit.batra@example.com','9856479652','16-02-2019',58000,2,'Yes','HR Executive')

SELECT * FROM EMPLOYEE
copy "employee" from 'E:\ASSESMENT TASK\data-1727771815335.csv' delimiter ',' csv header


--- Task 4: Update the Employee_Details Table
---Update the EmployeeDetails table by setting the DepartmentID to 0 for all employees where IsActive is set to False.

update employee set departmentid = 0 
where isactive = 'false'


---Task 5: Update the Employee_Details Table - Salary Increment
  --- 1.   Increase the Salary by 8% for employees who meet the following conditions:
•--IsActive = False
•--DepartmentID = 0
•--JobTitle is one of the following:
--1. HR Manager 2. Financial Analyst 3. Business Analyst 4. Data Analyst

select * from employee 

UPDATE Employee
SET Salary = Salary * 1.08
WHERE IsActive = False
 AND DepartmentID = 0
 AND JobTitle IN ('HR Manager', 'Financial Analyst', 'Business Analyst', 'Data Analyst');


---Task 6: Query to Find Employees with Custom Column Names
--1. Retrieve the FirstName and LastName of employees whose Salary is between 30,000 and 50,000 and 
--display the results as Name (for FirstName) and Surname (for LastName).

select firstname as name, lastname as surname from employee where salary between 30000 and 50000

	
--Task 7: Query to Find Employees Whose FirstName Starts with 'A'
--1. Retrieve all data from the Employee_Details table where the FirstName starts with the letter 'A'.


select * from employee where firstname like 'A%'


--Task 8: Delete Rows with EmployeeID from 1 to 5
--1. Delete the rows from the Employee_Details table where the EmployeeID is between 1 and 5.


DELETE FROM employee
WHERE EmployeeID BETWEEN 1 AND 5;


select * from employee



--Task 9: Rename Table and Columns
--1. Change the name of the table and specific column names in the existing database structure to enhance clarity.

--Instructions:
1.	Rename the table from Employee_Details to employee_database.
2.	Rename the columns as follows:
o	Change FirstName to Name.
o	Change LastName to Surname.


--- already created the table with different name as "employee"
	

--Task 10: Add State Column and Update Data in PostgreSQL
--1. Enhance the employee_database table by adding a new column for State and populating it based on the IsActive status of employees.


Alter table employee add column state varchar(40)
	
update employee set state = 'India'
	where isactive = true
update employee set state = 'USA'
	where isactive = false

select * from employee




