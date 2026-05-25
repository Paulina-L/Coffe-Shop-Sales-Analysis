# DAILY SALES BY HOUR
USE coffee_shop_sales;
SET @Month_number = 2; # select month

SELECT
	MONTH(transaction_date) AS 'Month',
	SUM(unit_price * transaction_qty) AS Total_Sales,
	HOUR(transaction_time) AS 'Hour'
FROM coffee_shop_sales_data
WHERE MONTH(transaction_date) = @Month_number # FILTER BY MONTH
GROUP by MONTH(transaction_date), HOUR(transaction_time)
ORDER BY HOUR(transaction_time) ASC;
