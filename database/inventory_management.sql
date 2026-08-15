-- ============================================================
-- Inventory Management Relational Database
-- Database Creation and Table Definitions
-- ============================================================

-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS InventoryManagement;

-- Select the database
USE InventoryManagement;


-- ============================================================
-- 1. CUSTOMERS TABLE
-- Stores customer information used for customer orders.
-- ============================================================

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100)
);


-- ============================================================
-- 2. SUPPLIERS TABLE
-- Stores information about product suppliers.
-- ============================================================

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(200)
);


-- ============================================================
-- 3. PRODUCTS TABLE
-- Stores products available in the inventory system.
-- SupplierID establishes the relationship between products
-- and their suppliers.
-- ============================================================

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    UnitPrice DECIMAL(10,2) NOT NULL,
    ReorderLevel INT NOT NULL,
    SupplierID INT,

    CONSTRAINT FK_Products_Suppliers
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);


-- ============================================================
-- 4. INVENTORY TABLE
-- Stores current inventory quantities and reorder levels.
-- ============================================================

CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT NOT NULL,
    SupplierID INT NOT NULL,
    QuantityInStock INT NOT NULL,
    LastUpdated DATE,
    ReorderLevel INT NOT NULL,

    CONSTRAINT FK_Inventory_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID),

    CONSTRAINT FK_Inventory_Suppliers
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);


-- ============================================================
-- 5. ORDERS TABLE
-- Stores customer order information.
-- ============================================================

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    OrderStatus VARCHAR(30) NOT NULL,

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);


-- ============================================================
-- 6. ORDERDETAILS TABLE
-- Stores the individual products included in customer orders.
-- ============================================================

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_OrderDetails_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    CONSTRAINT FK_OrderDetails_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
