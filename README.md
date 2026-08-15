# Inventory Management Relational Database

![SQL](https://img.shields.io/badge/SQL-Database-blue)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange)
![Information Systems](https://img.shields.io/badge/Information%20Systems-Portfolio-green)

## Project Overview

This project demonstrates the design, development, testing, and documentation of an Inventory Management Relational Database.

The database was developed to address common inventory management challenges faced by businesses that rely heavily on spreadsheets to track products, suppliers, inventory levels, customers, and orders.

The solution uses a relational database structure to organize business information and establish relationships between related data.

The project demonstrates practical SQL and database management skills through database creation, data relationships, queries, inventory updates, and functional testing.

---

## Business Problem

Businesses that rely on spreadsheets for inventory management may experience:

- Duplicate or inconsistent information
- Difficulty tracking inventory levels
- Limited visibility into suppliers
- Difficulty identifying products that need to be reordered
- Challenges tracking customer orders
- Increased risk of data-entry errors
- Difficulty retrieving related business information

A relational database provides a centralized and structured solution for managing this information.

---

## Project Objectives

The primary objectives of this project were to:

- Design a relational database for inventory management
- Create tables for core business entities
- Establish primary and foreign key relationships
- Store product, supplier, inventory, customer, and order information
- Retrieve related information using SQL
- Update inventory when shipments are received
- Identify products at or below their reorder levels
- Retrieve customer order information
- Test database functionality using realistic business scenarios
- Document the testing process and results

---

# Database Architecture

The database contains six primary tables:

| Table | Purpose |
|---|---|
| Products | Stores product information |
| Suppliers | Stores supplier information |
| Inventory | Tracks product quantities and reorder levels |
| Customers | Stores customer information |
| Orders | Stores customer order information |
| OrderDetails | Stores products and quantities associated with orders |

### Relationships

The database uses primary and foreign key relationships to connect related tables.
