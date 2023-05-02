-- Task 2 - GetOrderDetail Prepared Statement

PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, TotalCost
FROM orders
WHERE OrderID = ?';

SET @OrderID = 1;
EXECUTE GetOrderDetail USING @OrderID;
