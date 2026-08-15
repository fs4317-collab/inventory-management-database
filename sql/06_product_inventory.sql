-- ============================================================
-- Test Case 6: Product and Inventory Relationship
-- ============================================================
-- Purpose:
-- Display product information together with the current
-- inventory quantity and reorder level.
--
-- The INNER JOIN connects Products and Inventory using
-- ProductID.
-- ============================================================

SELECT
    p.ProductID,
    p.ProductName,
    i.QuantityInStock,
    i.ReorderLevel
FROM Products p
INNER JOIN Inventory i
    ON p.ProductID = i.ProductID;


-- Screenshot Reference:
-- screenshots/test-case-6.png
