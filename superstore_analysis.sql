SELECT COUNT(*) as total_rows FROM train;
PRAGMA table_info(train);
SELECT
	Category,
	COUNT(*) as total_orders,
	ROUND(SUM(Sales),2) as total_sales,
	ROUND(AVG(Sales),2) as avg_order_value
FROM train GROUP BY Category
ORDER BY total_sales DESC;
SELECT 
  "Sub-Category",
  "Product Name",
  ROUND(SUM(Sales), 2) as total_sales,
  COUNT(*) as orders_count
FROM train
GROUP BY "Product Name", "Sub-Category"
ORDER BY total_sales DESC
LIMIT 10;
SELECT 
  Region,
  ROUND(SUM(Sales), 2) as total_sales,
  COUNT(*) as total_orders,
  ROUND(AVG(Sales), 2) as avg_order_value
FROM train
GROUP BY Region
ORDER BY total_sales DESC;
SELECT 
  State,
  ROUND(SUM(Sales), 2) as total_sales,
  COUNT(*) as total_orders
FROM train
WHERE Region = 'West'
GROUP BY State
ORDER BY total_sales DESC
LIMIT 5;
SELECT 
  substr("Order Date", 1, 4) as order_year,
  ROUND(SUM(Sales), 2) as total_sales,
  COUNT(*) as total_orders,
  ROUND(AVG(Sales), 2) as avg_order_value
FROM train
GROUP BY order_year
ORDER BY order_year;
SELECT 
  "Customer Name",
  COUNT(*) as total_orders,
  ROUND(SUM(Sales), 2) as total_sales,
  ROUND(AVG(Sales), 2) as avg_order_value
FROM train
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;
SELECT 
  "Ship Mode",
  COUNT(*) as total_orders,
  ROUND(SUM(Sales), 2) as total_sales,
  ROUND(AVG(Sales), 2) as avg_order_value,
  ROUND(SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER(), 2) as pct_of_total_sales
FROM train
GROUP BY "Ship Mode"
ORDER BY total_sales DESC;
WITH ranked_subcats AS (
  SELECT 
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2) as total_sales,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) as rnk
  FROM train
  GROUP BY Category, "Sub-Category"
)
SELECT 
  Category,
  "Sub-Category",
  total_sales
FROM ranked_subcats
WHERE rnk <= 3
ORDER BY Category, total_sales DESC;