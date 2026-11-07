CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50)
);

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price INT
);

CREATE TABLE [Orders] (
OrderID INT PRIMARY KEY,
CoustomerID INT,
ProductID INT,
Quantity INT
);

INSERT INTO Customers (CustomerID, CustomerName) VALUES (1, 'Mamtha');
INSERT INTO Customers (CustomerID, CustomerName) VALUES (2, 'Priya');

INSERT INTO Products (ProductID, ProductName, Price) VALUES (101, 'Mobile', 15000);
INSERT INTO Products (ProductID, ProductName, Price) VALUES (102, 'Laptop', 45000);

INSERT INTO [Orders] (OrderID, CoustomerID, ProductID, Quantity) VALUES (1, 1, 101, 2);
INSERT INTO [Orders] (OrderID, CoustomerID, ProductID, Quantity) VALUES (2, 1, 101, 5);
INSERT INTO [Orders] (OrderID, CoustomerID, ProductID, Quantity) VALUES (3, 2, 101, 1);
INSERT INTO [Orders] (OrderID, CoustomerID, ProductID, Quantity) VALUES (4, 2, 102, 1);

SELECT C.CustomerName, P.ProductName, P.Price, O.Quantity,
(P.Price * O.Quantity) AS TotalAmount
FROM Customers C
INNER JOIN [Orders] O ON C.CustomerID = O.CoustomerID
INNER JOIN Products P ON O.ProductID = P.ProductID;