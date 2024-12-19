DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Orders;

-- Create table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
    (1, 'Apple', 2.50),
    (2, 'Banana', 1.50),
    (3, 'Orange', 3.00),
    (4, 'Mango', 2.00);

-- Create order_s table
CREATE TABLE Order_s (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    Sales DECIMAL(10, 2)
);

INSERT INTO Order_s (OrderID, ProductID, Quantity, Sales)
VALUES
    (1, 1, 10, 25.00),
    (2, 1, 5, 12.50),
    (3, 2, 8, 12.00),
    (4, 3, 12, 36.00),
    (5, 4, 6, 12.00);

SELECT 
    p.ProductName,
    SUM(o.Sales) AS TotalRevenue
FROM Order_s o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;
