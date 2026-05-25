# DAILY SALES BY WEEKDAY
USE coffee_shop_sales;
SET @Month_number = 2; # select month

SELECT
	MONTH(transaction_date) AS 'Month',
	SUM(unit_price * transaction_qty) AS Total_Sales,
	DAYNAME(transaction_date) AS 'Weekday name',
    WEEKDAY(transaction_date) AS 'Weekday'
FROM coffee_shop_sales_data
WHERE MONTH(transaction_date) = @Month_number # FILTER BY MONTH
GROUP by MONTH(transaction_date), DAYNAME(transaction_date), WEEKDAY(transaction_date)
ORDER BY WEEKDAY(transaction_date) ASC;