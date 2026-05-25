#MONTHLY QUANTITY

USE coffee_shop_sales;

WITH Total_Quantity_Sold_By_Month AS(
								SELECT ROUND(SUM(transaction_qty)) AS Total_Quantity,
								MONTH(transaction_date) AS 'Month'
								FROM coffee_shop_sales_data
								GROUP BY MONTH(transaction_date))
SELECT 
	 Month,
     Total_Quantity,
     LAG(Total_Quantity) OVER (ORDER BY 'Month') AS Prev_Month_Total_Quantity,
     Total_Quantity - LAG(Total_Quantity) OVER (ORDER BY 'Month') AS Difference_In_Total_Quantity,
     ((Total_Quantity - LAG(Total_Quantity) OVER (ORDER BY 'Month'))/LAG(Total_Quantity) OVER (ORDER BY 'Month')) * 100 AS  MoM_increase_percentage
FROM Total_Quantity_Sold_By_Month;