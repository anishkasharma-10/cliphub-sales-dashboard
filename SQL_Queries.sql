-- View Complete Dataset
SELECT * FROM Sales;

-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM Sales;

-- Total Orders
SELECT COUNT(OrderID) AS Total_Orders
FROM Sales;

-- Average Order Value
SELECT AVG(Revenue) AS Average_Order_Value
FROM Sales;

-- Revenue by Category
SELECT Category,
       SUM(Revenue) AS Total_Revenue
FROM Sales
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- Revenue by City
SELECT City,
       SUM(Revenue) AS Total_Revenue
FROM Sales
GROUP BY City
ORDER BY Total_Revenue DESC;

-- Top Revenue Generating Products
SELECT Product,
       SUM(Revenue) AS Total_Revenue
FROM Sales
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- Total Quantity Sold by Product
SELECT Product,
       SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Product
ORDER BY Total_Quantity DESC;

-- Average Revenue by Category
SELECT Category,
       AVG(Revenue) AS Avg_Revenue
FROM Sales
GROUP BY Category;

-- Top 5 Orders by Revenue
SELECT *
FROM Sales
ORDER BY Revenue DESC
LIMIT 5;

-- Revenue Trend by Month
SELECT MONTH(Date) AS Month,
       SUM(Revenue) AS Total_Revenue
FROM Sales
GROUP BY MONTH(Date)
ORDER BY Month;

-- Revenue and Quantity by Category
SELECT Category,
       SUM(Revenue) AS Revenue,
       SUM(Quantity) AS Quantity_Sold
FROM Sales
GROUP BY Category
ORDER BY Revenue DESC;
