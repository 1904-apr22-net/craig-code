--- Creating Database  ---
CREATE DATABASE AssesmentDb
GO

CREATE SCHEMA adb
GO

--- Creating Tables ---

CREATE TABLE adb.Products(
    ID INT IDENTITY,
    Name NVARCHAR(200) NOT NULL,
    Price MONEY,
    CONSTRAINT PK_ProductId PRIMARY KEY(ID)
)

CREATE TABLE adb.Orders(
    ID INT IDENTITY,
    ProductID INT NOT NULL,
    CustomerID INT NOT NULL,
    CONSTRAINT PK_OrderId PRIMARY KEY(ID)
)

CREATE TABLE adb.Customers(
    ID INT IDENTITY,
    Firstname NVARCHAR(200) NOT NULL,
    Lastname NVARCHAR(200) NOT NULL,
    CardNumber NVARCHAR(20) NOT NULL,
    CONSTRAINT PK_CustomerId PRIMARY KEY(ID)
)

-- Foreign Key Relationships ---
ALTER TABLE Orders ADD
    CONSTRAINT FK_ProductId FOREIGN KEY(ProductID) REFERENCES Products(ID),
    CONSTRAINT FK_CustomerId FOREIGN KEY(CustomerID) REFERENCES Customers(ID)

--  Inserting values --
INSERT INTO adb.Products(Name, Price) VALUES
    ('iPhone', 200),
    ('Macbook', 1000),
    ('iPad', 300);

INSERT INTO adb.Customers(Firstname, Lastname, CardNumber) VALUES
    ('John', 'Smith', '1234567890987654'),
    ('Jane', 'Doe', '0987654321234567'),
    ('Tina', 'Smith', '1111111111111111');

INSERT INTO adb.Orders(ProductID, CustomerID) VALUES
    (1, 3),
    (2, 2),
    (3, 1);

-- Report all orders by Tina Smith --
SELECT * FROM adb.Orders AS o 
    INNER JOIN adb.Customers AS c ON o.CustomerID = c.ID
    WHERE FirstName = 'Tina'

-- Increase Price of iPhone --
UPDATE adb.Products
SET Price = 250
WHERE Name = 'iPhone'

-- report all revenue generated by sales of iphone --
SELECT SUM(Price) FROM adb.Orders AS o
    INNER JOIN adb.Products AS p ON o.ProductID = p.ID
    WHERE Name = 'iPhone'