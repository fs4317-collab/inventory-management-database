# Inventory Management Relational Database

![SQL](https://img.shields.io/badge/SQL-Database-blue)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange)
![Information Systems](https://img.shields.io/badge/Information%20Systems-Portfolio-green)

## Project Overview

This project is an **Inventory Management Relational Database Solution** developed using MySQL. The database is designed to help manage products, suppliers, inventory levels, customers, and customer orders.

The project demonstrates practical SQL and relational database skills, including:

- Database and table creation
- Primary and foreign keys
- Relational database design
- Inventory management
- SQL `SELECT`, `UPDATE`, and `INSERT` statements
- `INNER JOIN` queries
- Product searching
- Reorder-level identification
- Referential integrity
- Data validation

## Database Tables

The `InventoryManagement` database contains six related tables:

- **Customers** – Stores customer information.
- **Suppliers** – Stores supplier information.
- **Products** – Stores product information and supplier relationships.
- **Inventory** – Tracks product quantities and reorder levels.
- **Orders** – Stores customer order information.
- **OrderDetails** – Stores products and quantities associated with orders.

## SQL Test Cases

### Test Case 1 – Receive Inventory Shipment

Demonstrates checking the inventory for ProductID 14, adding 50 units to the inventory, and verifying the updated quantity.

**Screenshots:**

[View Test Case 1 – Before](screenshots/test-case-1-before.png)

[View Test Case 1 – After](screenshots/test-case-1-after.png)

---

### Test Case 2 – Reorder Level

Identifies products where the quantity in stock is less than or equal to the defined reorder level.

**Screenshot:**

[View Test Case 2](screenshots/test-case-2.png)

---

### Test Case 3 – Product and Supplier

Uses an `INNER JOIN` to retrieve products and their associated suppliers.

**Screenshot:**

[View Test Case 3](screenshots/test-case-3.png)

---

### Test Case 4 – Customer Orders

Uses an `INNER JOIN` to retrieve order information and the products associated with each order.

**Screenshot:**

[View Test Case 4](screenshots/test-case-4.png)

---

### Test Case 5 – Product Search

Uses the `LIKE` operator to search for products containing the word **"Oil"** in the product name.

**Screenshot:**

[View Test Case 5](screenshots/test-case-5.png)

---

### Test Case 6 – Product and Inventory

Uses an `INNER JOIN` to display products along with their current inventory quantities and reorder levels.

**Screenshot:**

[View Test Case 6](screenshots/test-case-6.png)

---

## Data Integrity Test

An additional test was performed to verify referential integrity by attempting to insert a product using an invalid `SupplierID`.

```sql
INSERT INTO Products
(ProductName, SupplierID)
VALUES
('Test Product', 9999);
