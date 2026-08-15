-- ============================================================
-- Test Case 2: Identify Products at or Below Reorder Level
-- ============================================================
-- Purpose:
-- Identify inventory items that need to be reordered.
--
-- A product is identified when QuantityInStock is less than
-- or equal to the defined ReorderLevel.
-- ============================================================

SELECT
    ProductID,
    QuantityInStock,
    ReorderLevel
FROM Inventory
WHERE QuantityInStock <= ReorderLevel;


-- Screenshot Reference:
-- screenshots/test-case-2.png
