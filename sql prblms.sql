create database company;
use company;
select * from da_sales;
select * from da_sales where ship_mode = 'Economy' and total_amount > 25000;

select * from da_sales where category = 'Technology' and country='Ireland' and Order_date > '2020-01-01';

 select * from da_sales
 order by Unit_Profit DESC
 limit 10;
 
 select * from da_sales
 order by Unit_Profit DESC
 limit 10, 20;
 
 select order_id,Customer_name from da_sales
 where customer_name like 'j%n';
 
 select order_id,Product_Name from da_sales
 where Product_Name LIKE '%Acco%';
 
 select city, sum(total_amount) as total_sales
 from da_sales
 group by city
 order by total_sales DESC
 LIMIT 5;
 
 select customer_name,total_amount from da_sales
 order by total_amount DESC
 limit 10, 10;

select SUM(total_amount) AS 'total revenue',
		         AVG(UNIT_COST) AS 'average unit cost',
                 COUNT(ORDER_ID) AS 'total number of orders'
from da_sales;

select COUNT(DISTINCT(Region)) as uniq_reg
FROM da_sales;

select customer_name, COUNT(order_id) as order_count
from da_sales
group by customer_name
order by order_count DESC;

select product_name, SUM(total_amount) as total_sales,
       Rank() OVER (order by SUM(total_amount) DESC) as Sales_RANK
from da_sales
group by product_name
limit 5;