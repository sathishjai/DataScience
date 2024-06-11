
CREATE TABLE Customers (customer_id INT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100), join_date DATE);
CREATE TABLE Products (product_id INT PRIMARY KEY, name VARCHAR(100), category VARCHAR(50), price DECIMAL(10, 2));
CREATE TABLE Orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE,
                     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
CREATE TABLE OrderDetails (order_detail_id INT PRIMARY KEY, order_id INT, product_id INT, quantity INT,
             total_price DECIMAL(10, 2),
             FOREIGN KEY (order_id) REFERENCES Orders(order_id),
             FOREIGN KEY (product_id) REFERENCES Products(product_id));
show tables; 
             

ALTER TABLE Products
ADD COLUMN stock_quantity int;
select * from Products; -- checking


INSERT INTO Customers VALUES (1, 'John Doe', 'john1@example.com', '2023-01-01'), (2, 'Jane Smith', 'jane2@example.com', '2023-01-02'), (3, 'Alice Johnson', 'alice3@example.com', '2023-01-03'), (4, 'Bob Brown', 'bob4@example.com', '2023-01-04'), (5, 'Charlie Davis', 'charlie5@example.com', '2023-01-05'), (6, 'Emma Wilson', 'emma6@example.com', '2023-01-06'), (7, 'Oliver Taylor', 'oliver7@example.com', '2023-01-07'), (8, 'Sophia Martin', 'sophia8@example.com', '2023-01-08'), (9, 'William Garcia', 'william9@example.com', '2023-01-09'), (10, 'Mia Martinez', 'mia10@example.com', '2023-01-10'), (11, 'James Lopez', 'james11@example.com', '2023-01-11'), (12, 'Evelyn Hernandez', 'evelyn12@example.com', '2023-01-12'), (13, 'Michael Hill', 'michael13@example.com', '2023-01-13'), (14, 'Abigail Gonzalez', 'abigail14@example.com', '2023-01-14'), (15, 'Charlotte Young', 'charlotte15@example.com', '2023-01-15'), (16, 'Daniel Scott', 'daniel16@example.com', '2023-01-16'), (17, 'Elizabeth King', 'elizabeth17@example.com', '2023-01-17'), (18, 'Sophia Lewis', 'sophia18@example.com', '2023-01-18'), (19, 'Benjamin Allen', 'benjamin19@example.com', '2023-01-19'), (20, 'Chloe Carter', 'chloe20@example.com', '2023-01-20'), (21, 'Liam Wright', 'liam21@example.com', '2023-01-21'), (22, 'Ava Adams', 'ava22@example.com', '2023-01-22'), (23, 'Olivia Mitchell', 'olivia23@example.com', '2023-01-23'), (24, 'Noah Perez', 'noah24@example.com', '2023-01-24'), (25, 'Emily Green', 'emily25@example.com', '2023-01-25'), (26, 'William Baker', 'william26@example.com', '2023-01-26'), (27, 'Isabella Thompson', 'isabella27@example.com', '2023-01-27'), (28, 'Lucas Nelson', 'lucas28@example.com', '2023-01-28'), (29, 'Sophia Murphy', 'sophia29@example.com', '2023-01-29'), (30, 'Aiden Rivera', 'aiden30@example.com', '2023-01-30'), (31, 'Amelia Cooper', 'amelia31@example.com', '2023-01-31'), (32, 'Ethan Reed', 'ethan32@example.com', '2023-02-01'), (33, 'Emma Coleman', 'emma33@example.com', '2023-02-02'), (34, 'Oliver Wood', 'oliver34@example.com', '2023-02-03'), (35, 'Ava Richardson', 'ava35@example.com', '2023-02-04'), (36, 'Liam Hall', 'liam36@example.com', '2023-02-05'), (37, 'Charlotte Watson', 'charlotte37@example.com', '2023-02-06'), (38, 'Mason Brooks', 'mason38@example.com', '2023-02-07'), (39, 'Sophia Bennett', 'sophia39@example.com', '2023-02-08'), (40, 'Amelia Gray', 'amelia40@example.com', '2023-02-09'), (41, 'Liam James', 'liam41@example.com', '2023-02-10'), (42, 'Aria Murphy', 'aria42@example.com', '2023-02-11'), (43, 'Logan Adams', 'logan43@example.com', '2023-02-12'), (44, 'Ella Martinez', 'ella44@example.com', '2023-02-13'), (45, 'Noah White', 'noah45@example.com', '2023-02-14'), (46, 'Olivia Clark', 'olivia46@example.com', '2023-02-15'), (47, 'Aiden Edwards', 'aiden47@example.com', '2023-02-16'), (48, 'Sophia Collins', 'sophia48@example.com', '2023-02-17'), (49, 'Emma Moore', 'emma49@example.com', '2023-02-18'), (50, 'Liam Allen', 'liam50@example.com', '2023-02-19'), (51, 'Oliver Nelson', 'oliver51@example.com', '2023-02-20'), (52, 'Ava Campbell', 'ava52@example.com', '2023-02-21'), (53, 'Noah Mitchell', 'noah53@example.com', '2023-02-22'), (54, 'Isabella Hall', 'isabella54@example.com', '2023-02-23'), (55, 'Charlotte Wright', 'charlotte55@example.com', '2023-02-24'), (56, 'Ethan Ross', 'ethan56@example.com', '2023-02-25'), (57, 'Amelia Perez', 'amelia57@example.com', '2023-02-26'), (58, 'Liam Roberts', 'liam58@example.com', '2023-02-27'), (59, 'Emma Thompson', 'emma59@example.com', '2023-02-28'), (60, 'Oliver Johnson', 'oliver60@example.com', '2023-03-01');
INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 999.99, 50), (2, 'Smartphone', 'Electronics', 499.99, 100), (3, 'Tablet', 'Electronics', 299.99, 75), (4, 'Headphones', 'Accessories', 99.99, 200), (5, 'Smartwatch', 'Accessories', 199.99, 150), (6, 'Portable Speaker', 'Accessories', 79.99, 100), (7, 'Wireless Mouse', 'Accessories', 29.99, 300), (8, 'Keyboard', 'Accessories', 49.99, 200), (9, 'External Hard Drive', 'Accessories', 129.99, 100), (10, 'USB Flash Drive', 'Accessories', 19.99, 500), (11, 'Gaming Console', 'Electronics', 399.99, 50), (12, '4K Smart TV', 'Electronics', 799.99, 30), (13, 'Digital Camera', 'Electronics', 299.99, 80), (14, 'Wireless Earbuds', 'Accessories', 149.99, 150), (15, 'Printer', 'Electronics', 199.99, 50), (16, 'Wireless Router', 'Electronics', 79.99, 100), (17, 'Fitness Tracker', 'Electronics', 89.99, 120), (18, 'Bluetooth Speaker', 'Electronics', 59.99, 200), (19, 'Power Bank', 'Accessories', 49.99, 150), (20, 'Wireless Charger', 'Accessories', 39.99, 200), (21, 'Action Camera', 'Electronics', 199.99, 70), (22, 'Virtual Reality Headset', 'Electronics', 299.99, 50), (23, 'Wireless Keyboard and Mouse Combo', 'Accessories', 69.99, 100), (24, 'Car Charger', 'Accessories', 19.99, 300), (25, 'Gaming Mouse', 'Accessories', 59.99, 150), (26, 'HDMI Cable', 'Accessories', 9.99, 500), (27, 'Monitor', 'Electronics', 299.99, 80), (28, 'Webcam', 'Electronics', 49.99, 100), (29, 'MicroSD Card', 'Accessories', 29.99, 200), (30, 'Wireless Headset', 'Accessories', 99.99, 120), (31, 'Smart Home Speaker', 'Electronics', 149.99, 100), (32, 'Graphics Card', 'Electronics', 499.99, 40), (33, 'External DVD Drive', 'Accessories', 49.99, 80), (34, 'Home Theater System', 'Electronics', 499.99, 30), (35, 'Wireless Gaming Controller', 'Accessories', 69.99, 80), (36, 'USB-C Hub', 'Accessories', 39.99, 150), (37, 'Wireless Barcode Scanner', 'Accessories', 99.99, 50), (38, 'Cordless Phone', 'Electronics', 59.99, 100), (39, 'Wireless Presenter', 'Accessories', 29.99, 150), (40, 'SD Card Reader', 'Accessories', 14.99, 200), (41, 'Network Switch', 'Electronics', 99.99, 80), (42, 'External SSD', 'Accessories', 199.99, 70), (43, 'Wireless Gaming Mouse', 'Accessories', 79.99, 100), (44, 'Bluetooth Keyboard', 'Accessories', 49.99, 120), (45, 'Portable Projector', 'Electronics', 249.99, 60), (46, 'USB-C Cable', 'Accessories', 9.99, 300), (47, 'Bluetooth Earphones', 'Accessories', 39.99, 200), (48, 'Wireless Barcode Printer', 'Accessories', 299.99, 30), (49, 'Wireless Access Point', 'Electronics', 129.99, 50), (50, 'Microphone', 'Accessories', 79.99, 100), (51, 'USB Docking Station', 'Accessories', 89.99, 80), (52, 'Wireless Presenter Remote', 'Accessories', 19.99, 150), (53, 'Gaming Keyboard', 'Accessories', 99.99, 100), (54, 'Wireless Webcam', 'Electronics', 99.99, 80), (55, 'Bluetooth Adapter', 'Accessories', 14.99, 200), (56, 'Wireless Gamepad', 'Accessories', 49.99, 100), (57, 'External Webcam', 'Electronics', 59.99, 120), (58, 'Portable CD Player', 'Electronics', 39.99, 150), (59, 'Wireless Print Server', 'Electronics', 79.99, 100), (60, 'USB WiFi Adapter', 'Accessories', 29.99, 200);
INSERT INTO Orders VALUES (1, 1, '2023-01-01'), (2, 2, '2023-01-02'), (3, 3, '2023-01-03'), (4, 4, '2023-01-04'), (5, 5, '2023-01-05'), (6, 6, '2023-01-06'), (7, 7, '2023-01-07'), (8, 8, '2023-01-08'), (9, 9, '2023-01-09'), (10, 10, '2023-01-10'), (11, 11, '2023-01-11'), (12, 12, '2023-01-12'), (13, 13, '2023-01-13'), (14, 14, '2023-01-14'), (15, 15, '2023-01-15'), (16, 16, '2023-01-16'), (17, 17, '2023-01-17'), (18, 18, '2023-01-18'), (19, 19, '2023-01-19'), (20, 20, '2023-01-20'), (21, 21, '2023-01-21'), (22, 22, '2023-01-22'), (23, 23, '2023-01-23'), (24, 24, '2023-01-24'), (25, 25, '2023-01-25'), (26, 26, '2023-01-26'), (27, 27, '2023-01-27'), (28, 28, '2023-01-28'), (29, 29, '2023-01-29'), (30, 30, '2023-01-30'), (31, 31, '2023-01-31'), (32, 32, '2023-02-01'), (33, 33, '2023-02-02'), (34, 34, '2023-02-03'), (35, 35, '2023-02-04'), (36, 36, '2023-02-05'), (37, 37, '2023-02-06'), (38, 38, '2023-02-07'), (39, 39, '2023-02-08'), (40, 40, '2023-02-09'), (41, 41, '2023-02-10'), (42, 42, '2023-02-11'), (43, 43, '2023-02-12'), (44, 44, '2023-02-13'), (45, 45, '2023-02-14'), (46, 46, '2023-02-15'), (47, 47, '2023-02-16'), (48, 48, '2023-02-17'), (49, 49, '2023-02-18'), (50, 50, '2023-02-19'), (51, 51, '2023-02-20'), (52, 52, '2023-02-21'), (53, 53, '2023-02-22'), (54, 54, '2023-02-23'), (55, 55, '2023-02-24'), (56, 56, '2023-02-25'), (57, 57, '2023-02-26'), (58, 58, '2023-02-27'), (59, 59, '2023-02-28'), (60, 60, '2023-03-01');
INSERT INTO OrderDetails VALUES (1, 1, 1, 1, 999.99), (2, 2, 2, 2, 999.98), (3, 3, 3, 1, 299.99), (4, 4, 4, 1, 99.99), (5, 5, 5, 1, 199.99), (6, 6, 6, 2, 159.98), (7, 7, 7, 1, 29.99), (8, 8, 8, 2, 99.98), (9, 9, 9, 1, 129.99), (10, 10, 10, 3, 59.97), (11, 11, 11, 1, 399.99), (12, 12, 12, 1, 799.99), (13, 13, 13, 2, 599.98), (14, 14, 14, 1, 149.99), (15, 15, 15, 1, 199.99), (16, 16, 16, 1, 79.99), (17, 17, 17, 3, 269.97), (18, 18, 18, 2, 119.98), (19, 19, 19, 1, 49.99), (20, 20, 20, 2, 79.98), (21, 21, 21, 1, 199.99), (22, 22, 22, 1, 299.99), (23, 23, 23, 1, 69.99), (24, 24, 24, 1, 19.99), (25, 25, 25, 2, 119.98), (26, 26, 26, 3, 29.97), (27, 27, 27, 2, 599.98), (28, 28, 28, 1, 49.99), (29, 29, 29, 2, 59.98), (30, 30, 30, 1, 99.99), (31, 31, 31, 1, 149.99), (32, 32, 32, 1, 499.99), (33, 33, 33, 1, 49.99), (34, 34, 34, 1, 499.99), (35, 35, 35, 2, 139.98), (36, 36, 36, 1, 39.99), (37, 37, 37, 1, 99.99), (38, 38, 38, 1, 59.99), (39, 39, 39, 2, 59.98), (40, 40, 40, 3, 44.97), (41, 41, 41, 1, 99.99), (42, 42, 42, 1, 199.99), (43, 43, 43, 1, 79.99), (44, 44, 44, 1, 49.99), (45, 45, 45, 2, 499.98), (46, 46, 46, 3, 29.97), (47, 47, 47, 1, 39.99), (48, 48, 48, 1, 299.99), (49, 49, 49, 1, 129.99), (50, 50, 50, 2, 159.98), (51, 51, 51, 1, 89.99), (52, 52, 52, 1, 19.99), (53, 53, 53, 1, 99.99), (54, 54, 54, 2, 199.98), (55, 55, 55, 1, 14.99), (56, 56, 56, 2, 99.98), (57, 57, 57, 1, 59.99), (58, 58, 58, 1, 39.99), (59, 59, 59, 1, 79.99), (60, 60, 60, 1, 29.99);
Select * from Customers; 
Select * from Products; 
Select * from Orders;
Select * from OrderDetails; 

SELECT p.category AS product_category, SUM(od.quantity * od.total_price) AS total_sales
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category;

SELECT 
    o.order_id,
    c.name AS customer_name,
    p.name AS product_name,
    od.quantity,
    od.total_price
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
JOIN 
    OrderDetails od ON o.order_id = od.order_id
JOIN 
    Products p ON od.product_id = p.product_id;

SELECT 
    c.customer_id,
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name;
SELECT 
    p.category AS product_category,
    SUM(od.quantity * od.total_price) AS total_revenue
FROM 
    OrderDetails od
JOIN 
    Products p ON od.product_id = p.product_id
GROUP BY 
    p.category;
SELECT 
    c.customer_id,
    c.name AS customer_name,
    SUM(od.quantity * od.total_price) AS total_spending
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    OrderDetails od ON o.order_id = od.order_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_spending DESC
LIMIT 
    3;
SELECT 
    o.order_id,
    o.order_date,
    c.name AS customer_name,
    p.name AS product_name,
    od.quantity,
    od.total_price
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
JOIN 
    OrderDetails od ON o.order_id = od.order_id
JOIN 
    Products p ON od.product_id = p.product_id
WHERE 
    o.order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);
