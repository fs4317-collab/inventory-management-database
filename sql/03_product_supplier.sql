-- ============================================================
-- Test Case 3: Product and Supplier Relationship
-- ============================================================
-- Purpose:
-- Display products together with their corresponding suppliers.
--
-- The INNER JOIN connects Products and Suppliers using
-- SupplierID as the relationship between the two tables.
-- ============================================================

SELECT
    p.ProductID,
    p.ProductName,
    s.SupplierID,
    s.SupplierName
FROM Products p
INNER JOIN Suppliers s
    ON p.SupplierID = s.SupplierID;


-- Screenshot Reference:
-- screenshots/test-case-3.png
