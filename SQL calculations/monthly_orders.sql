#MONTHLY ORDERS
USE coffee_shop_sales;

WITH Total_Orders_By_Month AS(
								SELECT COUNT(transaction_id) AS Total_Orders,
								MONTH(transaction_date) AS 'Month'
								FROM coffee_shop_sales_data
								GROUP BY MONTH(transaction_date))
SELECT 
	 Month,
     Total_Orders,
     LAG(Total_Orders) OVER (ORDER BY 'Month') AS Prev_Month_Total_Orders,
     Total_Orders - LAG(Total_Orders) OVER (ORDER BY 'Month') AS Difference_In_Orders,
     ((Total_Orders - LAG(Total_Orders) OVER (ORDER BY 'Month'))/LAG(Total_Orders) OVER (ORDER BY 'Month')) * 100 AS  MoM_increase_percentage
FROM Total_Orders_By_Month;