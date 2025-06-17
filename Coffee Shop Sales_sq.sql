SELECT * FROM coffee_shop_sales_db.coffee_shop_sales;

update coffee_shop_sales
set transaction_date = str_to_date(transaction_date, '%d-%m-%Y');

alter table coffee_shop_sales
modify column transaction_date date;

describe coffee_shop_sales

update coffee_shop_sales
set transaction_time = str_to_date(transaction_time, '%H:%i:%s');

alter table coffee_shop_sales
modify column transaction_time time;

alter table coffee_shop_sales
change column ï»¿transaction_id transact_id int;

describe coffee_shop_sales 
select round(sum(unit_price * transaction_qty),1) as Total_Sales
from coffee_shop_sales
where 
month(transaction_date) = 3 -- march

SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(unit_price * transaction_qty)) AS total_sales,
    (SUM(unit_price * transaction_qty) - LAG(SUM(unit_price * transaction_qty), 1)
    OVER (ORDER BY MONTH(transaction_date))) / LAG(SUM(unit_price * transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5) -- for months of April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);
    
    select count(transact_id) as total_orders
    from coffee_shop_sales
    where 
    month(transaction_date) = 3 -- march
    
    SELECT 
    MONTH(transaction_date) AS month,
    ROUND(COUNT(transact_id)) AS total_orders,
    (COUNT(transact_id) - LAG(COUNT(transact_id), 1) 
    OVER (ORDER BY MONTH(transaction_date))) / LAG(COUNT(transact_id), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5) -- for April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);

select sum(transaction_qty) as Total_Quantity_Sold
from coffee_shop_sales
where
month(transaction_date) = 6

SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(transaction_qty)) AS total_quantity_sold,
    (SUM(transaction_qty) - LAG(SUM(transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date))) / LAG(SUM(transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5)   -- for April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);
    
    SELECT
    SUM(unit_price * transaction_qty) AS total_sales,
    SUM(transaction_qty) AS total_quantity_sold,
    COUNT(transact_id) AS total_orders
FROM 
    coffee_shop_sales
WHERE 
    transaction_date = '2023-05-18';

SELECT
    CASE WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'weekend'
         ELSE 'weekdays'
    END AS day_type,
    CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000, 1), 'k') AS total_sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY
    CASE WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'weekend'
         ELSE 'weekdays'
    END;

select
    store_location,
sum(unit_price * transaction_qty) as total_sales
from coffee_shop_sales
where month(transaction_date) = 5
group by store_location

SELECT AVG(total_sales) AS average_sales
FROM (
    SELECT 
        SUM(unit_price * transaction_qty) AS total_sales
    FROM 
        coffee_shop_sales
    WHERE 
        MONTH(transaction_date) = 5  -- Filter for May
    GROUP BY 
        transaction_date
) AS daily_sales_summary;

SELECT 
    DAY(transaction_date) AS day_of_month,
    ROUND(SUM(unit_price * transaction_qty),1) AS total_sales
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) = 5  -- Filter for May
GROUP BY 
    DAY(transaction_date)
ORDER BY 
    DAY(transaction_date);
    
    WITH daily_sales AS (
    SELECT
        DAY(transaction_date) AS day_of_month,
        SUM(unit_price * transaction_qty) AS total_sales
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 5
    GROUP BY DAY(transaction_date)
)
SELECT
    day_of_month,
    CASE
        WHEN total_sales > (SELECT AVG(total_sales) FROM daily_sales) THEN 'Above Average'
        WHEN total_sales < (SELECT AVG(total_sales) FROM daily_sales) THEN 'Below Average'
        ELSE 'Average'
    END AS sales_status,
    total_sales
FROM daily_sales
ORDER BY day_of_month;

SELECT 
	store_location,
	SUM(unit_price * transaction_qty) as Total_Sales
FROM coffee_shop_sales
WHERE
	MONTH(transaction_date) =5 
GROUP BY store_location
ORDER BY 	SUM(unit_price * transaction_qty) DESC

SELECT 
	product_category,
	ROUND(SUM(unit_price * transaction_qty),1) as Total_Sales
FROM coffee_shop_sales
WHERE
	MONTH(transaction_date) = 5 
GROUP BY product_category
ORDER BY SUM(unit_price * transaction_qty) DESC


SELECT 
	product_type,
	ROUND(SUM(unit_price * transaction_qty),1) as Total_Sales
FROM coffee_shop_sales
WHERE
	MONTH(transaction_date) = 5 
GROUP BY product_type
ORDER BY SUM(unit_price * transaction_qty) DESC
LIMIT 10


