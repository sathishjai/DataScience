create database Sales;
use Sales;
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE
);

INSERT INTO Sales VALUES (1, 101, 5, '2024-05-01'),
(2, 102, 3, '2024-05-02'),
(3, 101, 7, '2024-05-03'),
(4, 103, 2, '2024-05-04'),
(5, 102, 4, '2024-05-05'),
(6, 101, 1, '2024-05-06'),
(7, 104, 8, '2024-05-07'),
(8, 103, 6, '2024-05-08');

SELECT  SUM(Quantity) as TotalQuantity FROM Sales;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY ProductID ;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY ProductID
LIMIT 3;

SELECT SaleID, ProductID, Quantity, SaleDate
FROM Sales
ORDER BY SaleDate;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY ProductID
ORDER BY TotalQuantity desc;





