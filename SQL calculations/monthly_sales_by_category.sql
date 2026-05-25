# Monthly sales, quantity and orders by product category
USE coffee_shop_sales;
SET @Product_cat = 'Coffee'; # select category

WITH Total_Sales_By_Month AS(
								SELECT SUM(unit_price * transaction_qty) AS Total_Sales,
                                SUM(transaction_qty) AS Total_Quantity,
                                COUNT(transaction_id) AS Total_Orders,
								MONTH(transaction_date) AS 'Month',
                                product_category
								FROM coffee_shop_sales_data
                                WHERE product_category = @Product_cat
								GROUP BY MONTH(transaction_date), product_category)
SELECT 
	 Month,
     Total_Sales,
     Total_Quantity,
     Total_Orders,
     LAG(Total_Sales) OVER (ORDER BY 'Month') AS Prev_Month_Total_Sales,
     Total_Sales - LAG(Total_Sales) OVER (ORDER BY 'Month') AS Difference_In_Sales,
     ((Total_Sales - LAG(Total_Sales) OVER (ORDER BY 'Month'))/LAG(Total_Sales) OVER (ORDER BY 'Month')) * 100 AS  MoM_sales_increase_percentage,
     product_category
FROM Total_Sales_By_Month;