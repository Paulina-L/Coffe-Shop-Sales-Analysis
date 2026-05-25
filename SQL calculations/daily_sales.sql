# DAILY SALES BY MONTH
USE coffee_shop_sales;
SET @Month_number = 2; # select month

WITH Sales_Daily_By_Month AS(
SELECT
	MONTH(transaction_date) AS 'Month',
	SUM(unit_price * transaction_qty) AS Total_Sales,
	DAY(transaction_date) AS 'Day'
FROM coffee_shop_sales_data
WHERE MONTH(transaction_date) = @Month_number # FILTER BY MONTH
GROUP by MONTH(transaction_date), DAY(transaction_date)
) 
SELECT
	Month,
    Day,
    Total_Sales,
    CASE
		WHEN Total_Sales < AVG(Total_Sales) OVER() THEN 'Below Average !!!' # average of sales over chosen month
        ELSE 'Above Average' # >= considered as above average
	END AS 'Status'
FROM Sales_Daily_By_Month;

		