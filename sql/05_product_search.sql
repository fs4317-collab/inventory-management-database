-- ============================================================
-- Test Case 5: Product Search
-- ============================================================
-- Purpose:
-- Search the Products table for products containing the
-- word "Oil" anywhere in the ProductName.
--
-- The % wildcard allows any characters before or after "Oil".
-- ============================================================

SELECT *
FROM Products
WHERE ProductName LIKE '%Oil%';


-- Screenshot Reference:
-- screenshots/test-case-5.png
