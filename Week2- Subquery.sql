-- Task 3: Subquery
-- Finding all menu items that has been place more then 2 times
-- Item Name is silmilar to MenuNames so I selected the item name from the items table
SELECT ItemName FROM menuitems 
WHERE MenuItemID = ANY (SELECT Quantity FROM orders WHERE Quantity > 2);
