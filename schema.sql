CREATE DATABASE ComputerStore;

USE ComputerStore;

-- Customer Table

CREATE TABLE Customer (
	CustomerID 			INTEGER NOT NULL AUTO_INCREMENT,
    FirstName 			VARCHAR(30) NOT NULL,
    LastName 			VARCHAR(30) NOT NULL,
    Phone 				CHAR(12) NULL, -- Format: ###-###-####
    Email 				VARCHAR(100) NOT NULL UNIQUE,
    StreetAddress 		VARCHAR (100) NULL, 
    City 				VARCHAR (50) NULL,
    State 				CHAR(2) NULL,
    Zip 				CHAR(10) NULL,
    RegistrationDate 	DATE NOT NULL,
    CONSTRAINT CUSTOMER_PK PRIMARY KEY (CustomerID)
    );
    
-- Employee Table

CREATE TABLE Employee (
	EmployeeID 	INTEGER NOT NULL AUTO_INCREMENT,
    FirstName 	VARCHAR(30) NOT NULL,
    LastName 	VARCHAR(30) NOT NULL,
    Phone 		CHAR(12) NULL, -- Format: ###-###-####
    Email 		VARCHAR(100) NOT NULL UNIQUE,
    StreetAddress VARCHAR (100) NULL, 
    City 		VARCHAR (50) NULL,
    State 		CHAR(2) NULL,
    Zip 		CHAR(10) NULL,
    HireDate 	DATE NOT NULL,
    Role VARCHAR(100) NOT NULL,
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY (EmployeeID)
    );
    
-- Product Table

CREATE TABLE Product (
	ProductID 	INTEGER NOT NULL AUTO_INCREMENT,
    SKU 		VARCHAR(30) NOT NULL, 
    Name 		VARCHAR(50) NOT NULL, 
    Brand 		VARCHAR(30) NOT NULL,
    Model 		VARCHAR(30) NOT NULL,
    Category 	VARCHAR(30) NOT NULL,
    UnitPrice 	DECIMAL(10,2) NOT NULL,
    QuantityInStock INTEGER NOT NULL,
    CONSTRAINT PRODUCT_PK PRIMARY KEY (ProductID)
    );
    
-- Sales Order Table

CREATE TABLE SalesOrder (
	SalesOrderID 	INTEGER NOT NULL AUTO_INCREMENT,
    OrderDate 		DATE NOT NULL,
    PaymentMethod 	VARCHAR(45) NOT NULL,
    OrderTotal		DECIMAL(10,2) NOT NULL,
    CustomerID 		INTEGER NOT NULL,
    EmployeeID 		INTEGER NOT NULL,
    CONSTRAINT SALESORDER_PK PRIMARY KEY (SalesOrderID),
    CONSTRAINT SALESORDER_FK_CUSTOMER FOREIGN KEY (CustomerID) 
		REFERENCES Customer (CustomerID),
    CONSTRAINT SALESORDER_FK_EMPLOYEE FOREIGN KEY (EmployeeID) 
		REFERENCES Employee (EmployeeID)
    );
    
-- Order Detail Table

CREATE TABLE OrderDetail ( 
	OrderDetailID 	INTEGER NOT NULL AUTO_INCREMENT, 
	Quantity 		INTEGER NOT NULL, 
	LineTotal 		DECIMAL(10,2) NOT NULL, 
	UnitPriceAtSale DECIMAL(10,2) NOT NULL, 
	SalesOrderID 	INTEGER NOT NULL, 
	ProductID 		INTEGER NOT NULL, CONSTRAINT ORDERDETAIL_PK PRIMARY KEY (OrderDetailID), 
	CONSTRAINT ORDERDETAIL_FK_SALESORDER FOREIGN KEY (SalesOrderID) 
		REFERENCES SalesOrder (SalesOrderID), 
	CONSTRAINT ORDERDETAIL_FK_PRODUCT FOREIGN KEY (ProductID) 
		REFERENCES Product (ProductID)
	);
    
    
    
    

    
    
    

    


    
