-- Task1 (Virtual Table)

CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM orders
WHERE Quantity >=2;

Select * from OrdersView;
