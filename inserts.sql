USE ComputerStore;

-- Customer Data

INSERT INTO Customer 
(FirstName, LastName, Phone, Email, StreetAddress, City, State, Zip, RegistrationDate)
VALUES
('Jalen', 'Brooks', '470-228-3120', 'jalen.brooks@gmail.com', '1420 Briarwood Ct', 'Duluth', 'GA', '30096', '2025-09-10'),
('Tina', 'Morales', '404-915-2098', 'tmorales87@yahoo.com', '221 Evergreen Ln', 'Atlanta', 'GA', '30309', '2025-09-12'),
('Marcus', 'Nguyen', '678-440-7891', 'marcus.nguyen@outlook.com', '65 Silver Oak Dr', 'Lawrenceville', 'GA', '30046', '2025-09-13'),
('Destiny', 'Harris', '770-305-2241', 'destinyharris@gmail.com', '489 Ponce De Leon Ave', 'Decatur', 'GA', '30030', '2025-09-14'),
('Brian', 'Osei', '470-390-1128', 'brian.osei@gmail.com', '812 Lilburn Industrial Way', 'Lilburn', 'GA', '30047', '2025-09-15'),
('Linh', 'Tran', '404-733-9912', 'linh.tran@hotmail.com', '9772 Spalding Woods Dr', 'Peachtree Corners', 'GA', '30092', '2025-09-16'),
('Carmen', 'Diaz', '678-501-4433', 'cdiaz@gmail.com', '533 Valley Brook Rd', 'Stone Mountain', 'GA', '30083', '2025-09-17'),
('Ethan', 'Park', '770-213-6992', 'ethan.park@gmail.com', '114 Ridgefield Dr', 'Suwanee', 'GA', '30024', '2025-09-18'),
('Samantha', 'Carter', '912-553-1188', 's.carter@icloud.com', '900 Abercorn St', 'Savannah', 'GA', '31401', '2025-09-19'),
('Jordan', 'Fields', '678-441-7721', 'jfields@protonmail.com', '38 Roswell Rd', 'Marietta', 'GA', '30062', '2025-09-20');

-- Employee Data

INSERT INTO Employee
(FirstName, LastName, Phone, Email, StreetAddress, City, State, Zip, HireDate, Role)
VALUES
('Derrick', 'Watson', '404-991-3221', 'derrick.watson@compstore.com', '120 Tech Ridge Rd', 'Atlanta', 'GA', '30308', '2023-02-10', 'Store Manager'),
('Lila', 'Patel', '470-505-8899', 'lila.patel@compstore.com', '552 Brookstone Ln', 'Suwanee', 'GA', '30024', '2024-01-15', 'Sales Associate'),
('Andre', 'Lopez', '770-644-2123', 'andre.lopez@compstore.com', '2100 Main St', 'Duluth', 'GA', '30097', '2023-08-04', 'Repair Technician'),
('Kim', 'Nguyen', '678-445-1901', 'kim.nguyen@compstore.com', '1452 Pleasant Hill Rd', 'Lawrenceville', 'GA', '30044', '2024-03-18', 'Inventory Clerk'),
('Michael', 'Shaw', '470-299-1188', 'mshaw@compstore.com', '321 Peachtree Industrial Blvd', 'Norcross', 'GA', '30071', '2023-05-22', 'Sales Associate'),
('Ariana', 'Green', '678-889-4420', 'ariana.green@compstore.com', '98 Amberfield Dr', 'Johns Creek', 'GA', '30022', '2023-09-02', 'Repair Technician'),
('Troy', 'Carter', '404-780-2114', 'tcarter@compstore.com', '65 Chamblee Tucker Rd', 'Tucker', 'GA', '30084', '2024-05-11', 'Warehouse Assistant'),
('Hannah', 'Bates', '912-300-5591', 'hannah.bates@compstore.com', '811 Forsyth St', 'Macon', 'GA', '31201', '2024-02-05', 'Cashier'),
('Sean', 'Ramirez', '470-633-9820', 'sean.ramirez@compstore.com', '7100 Sugarloaf Pkwy', 'Duluth', 'GA', '30097', '2023-07-19', 'Sales Associate'),
('Felicia', 'Kim', '678-901-7733', 'felicia.kim@compstore.com', '29 Roswell St', 'Marietta', 'GA', '30060', '2023-06-10', 'Assistant Manager');

-- Product Data

INSERT INTO Product
(SKU, Name, Brand, Model, Category, UnitPrice, QuantityInStock)
VALUES
('LAP-ASU-X515-15',      '15" Laptop i5 16GB 512GB', 'ASUS',     'X515',      'Laptop',   749.99,  12),
('MON-DEL-S2421-24',     '24" IPS Monitor 75Hz',     'Dell',     'S2421',     'Monitor',  179.99,  20),
('KB-KCR-K6-WL',         'Mechanical Keyboard',      'Keychron', 'K6',        'Keyboard',  69.99,  35),
('MOU-LOG-M720',         'Wireless Mouse',           'Logitech', 'M720',      'Mouse',     39.99,  50),
('SSD-SAM-980-1TB',      '1TB NVMe SSD',             'Samsung',  '980',       'Storage',   89.99,  28),
('GPU-MSI-3060-12G',     'GeForce RTX 3060 12GB',    'MSI',      'Ventus',    'GPU',      329.99,  8),
('CPU-INT-I5-12400F',    'Core i5-12400F 6-Core',    'Intel',    'i5-12400F', 'CPU',      179.99,  15),
('ROU-TPK-ARCHER-AX55',  'Wi-Fi 6 Router AX3000',    'TP-Link',  'AX55',      'Router',   129.99,  18),
('HDP-HYPERX-CLOUD2',    'Gaming Headset Cloud II',  'HyperX',   'Cloud II',  'Headset',   69.99,  26),
('CAM-LOG-C920',         '1080p HD Webcam',          'Logitech', 'C920',      'Webcam',    59.99,  22);

-- Sales Order Data

INSERT INTO SalesOrder
(OrderDate, PaymentMethod, OrderTotal, CustomerID, EmployeeID)
VALUES
('2025-10-01', 'Credit Card', 859.97, 1, 2),  
('2025-10-02', 'Cash',        419.97, 2, 5),  
('2025-10-03', 'Debit Card',       309.97, 3, 3),  
('2025-10-05', 'Credit Card', 819.98, 4, 1),  
('2025-10-06', 'Online',      509.98, 5, 6),  
('2025-10-08', 'Credit Card', 329.96, 6, 4),  
('2025-10-10', 'Debit Card',       259.97, 7, 9),  
('2025-10-12', 'Credit Card', 969.97, 8, 2),  
('2025-10-15', 'Cash',        339.97, 9, 10), 
('2025-10-18', 'Credit Card', 759.96, 10, 7);

-- Order Detail Table

INSERT INTO OrderDetail
(Quantity, LineTotal, UnitPriceAtSale, SalesOrderID, ProductID)
VALUES
-- Order 1 (Total: 859.97)
(1, 749.99, 749.99, 1, 1), -- 1x Laptop
(1, 69.99, 69.99, 1, 3),   -- 1x Keyboard
(1, 39.99, 39.99, 1, 4),   -- 1x Mouse

-- Order 2 (Total: 419.97)
(1, 329.99, 329.99, 2, 6), -- 1x GPU
(1, 89.98, 89.98, 2, 5),   -- 1x SSD

-- Order 3 (Total: 309.97)
(1, 179.99, 179.99, 3, 7), -- 1x CPU
(1, 129.98, 129.98, 3, 8), -- 1x Router

-- Order 4 (Total: 819.98)
(1, 749.99, 749.99, 4, 1), -- 1x Laptop
(1, 69.99, 69.99, 4, 9),   -- 1x Headset

-- Order 5 (Total: 509.98)
(1, 329.99, 329.99, 5, 6), -- 1x GPU
(1, 179.99, 179.99, 5, 7), -- 1x CPU

-- Order 6 (Total: 329.96)
(1, 329.96, 329.96, 6, 6), -- 1x GPU 

-- Order 7 (Total: 259.97)
(1, 129.99, 129.99, 7, 8), -- 1x Router
(1, 89.99, 89.99, 7, 5),   -- 1x SSD
(1, 39.99, 39.99, 7, 4),   -- 1x Mouse

-- Order 8 (Total: 969.97)
(1, 749.99, 749.99, 8, 1), -- 1x Laptop
(1, 179.99, 179.99, 8, 2), -- 1x Monitor
(1, 39.99, 39.99, 8, 4),   -- 1x Mouse

-- Order 9 (Total: 339.97)
(1, 179.99, 179.99, 9, 2), -- 1x Monitor
(1, 89.99, 89.99, 9, 5),   -- 1x SSD
(1, 69.99, 69.99, 9, 9),   -- 1x Headset

-- Order 10 (Total: 759.96)
(4, 719.96, 179.99, 10, 7), -- 4x CPU (4 * 179.99 = 719.96)
(1, 40.00, 40.00, 10, 4);   -- 1x Mouse 


