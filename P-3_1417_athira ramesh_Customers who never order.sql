DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;

-- Create table
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    NAME VARCHAR(50)
);


INSERT INTO Customers (id, NAME)
VALUES
    (1, 'Joe'),
    (2, 'Henry'),
    (3, 'Sam'),
    (4, 'Max');


CREATE TABLE Orders (
    id INT PRIMARY KEY,
    customerId INT
);


INSERT INTO Orders (id, customerId)
VALUES
    (2, 1),
    (1, 3);


SELECT NAME AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);


