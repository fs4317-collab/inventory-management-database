-- ============================================================
-- Test Case 4: Customer Orders
-- ============================================================
-- Purpose:
-- Display order information and the products included
-- in each order.
--
-- The INNER JOIN connects Orders and OrderDetails using
-- OrderID.
-- ============================================================

SELECT
    o.OrderID,
    o.CustomerID,
    od.ProductID,
    od.Quantity
FROM Orders o
INNER JOIN OrderDetails od
    ON o.OrderID = od.OrderID;


-- Screenshot Reference:
-- screenshots/test-case-4.png
