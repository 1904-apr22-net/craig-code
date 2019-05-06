CREATE DATABASE EmployeeDb

GO
CREATE SCHEMA Employee

GO
DROP TABLE Employee.EmpDetails
CREATE TABLE Employee.EmpDetails (
    ID INT NOT NULL IDENTITY,
    EmployeeID INT NOT NULL DEFAULT('1'),
    Salary MONEY NOT NULL,
    Address1 NVARCHAR(200) NOT NULL,
    Address2 NVARCHAR(200),
    City NVARCHAR(100) NOT NULL,
    State NVARCHAR(100) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_ID PRIMARY KEY(ID),
)

CREATE TABLE Employee.Employee (
    ID INT NOT NULL IDENTITY,
    FirstName NVARCHAR(200) NOT NULL,
    LastName NVARCHAR(200) NOT NULL,
    SSN NVARCHAR(10) NOT NULL,
    DeptID INT NOT NULL UNIQUE,
    CONSTRAINT PK_EmpID PRIMARY KEY(ID)
)

ALTER TABLE Employee.EmpDetails ADD
    CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID)
        REFERENCES Employee.Employee(ID)

CREATE TABLE Employee.Department (
    ID INT NOT NULL IDENTITY,
    Name NVARCHAR(200) NOT NULL,
    Location NVARCHAR(200) NOT NULL,
    CONSTRAINT PK_DeptID PRIMARY KEY(ID)
)

ALTER TABLE Employee.Employee ADD
    CONSTRAINT FK_DeptID FOREIGN KEY(DeptID)
        REFERENCES Employee.Department(ID)


INSERT INTO Employee.EmpDetails(Salary, Address1, City, [State], Country) Values (
    '50000', '1214 Barton Hills', 'Austin', 'TX', 'United States'
    --('2', '45000', '1234 Mary Lane', 'Portland', 'OR', 'United States'),
    --('3', '75000', '2356 Maple Walk', 'New York City', 'NY', 'United States')
)

SELECT * FROM Employee.EmpDetails
