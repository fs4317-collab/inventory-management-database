-- ============================================================
-- Test Case 1: Receive Inventory Shipment
-- ============================================================
-- Purpose:
-- Verify the current inventory quantity for ProductID 14,
-- increase the quantity by 50 units, and verify the update.
-- ============================================================


-- Step 1: View the inventory quantity before receiving shipment

SELECT *
FROM Inventory
WHERE ProductID = 14;


-- Step 2: Receive 50 additional units

UPDATE Inventory
SET QuantityInStock = QuantityInStock + 50
WHERE ProductID = 14;


-- Step 3: Verify the inventory quantity after receiving shipment

SELECT *
FROM Inventory
WHERE ProductID = 14;


-- Screenshot References:
-- Before update: screenshots/test-case-1-before.png
-- After update:  screenshots/test-case-1-after.png
