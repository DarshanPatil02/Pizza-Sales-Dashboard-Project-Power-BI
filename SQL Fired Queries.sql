Use  [Pizza DB];
Select * from pizza_sales;

Select sum(total_price) as "Total Revenue" from pizza_sales;

Select SUM(total_price)/COUNT(Distinct order_id) as "Average Order Value" from pizza_sales;

Select SUM(quantity) as "Total Pizza Sold" from pizza_sales;

Select COUNT(distinct order_id) as "Total Pizza Sold" from pizza_sales;

Select Cast(Cast(SUM(quantity) as decimal(10,2))/Cast(COUNT(distinct order_id) as decimal(10,2)) as decimal(10,2)) as "Average Pizza per Ordered" from pizza_sales;

Select DATENAME(DW,order_date) as "Order Day", COUNT(distinct order_id) as "Total Orders" 
from pizza_sales group by DATENAME(DW, order_date);

Select DATENAME(MONTH, order_date) as "Month Name", COUNT(distinct order_id) as "Total Orders" 
from pizza_sales group by DATENAME(Month, order_date) order by "Total Orders" Desc;

Select pizza_category, Cast(SUM(total_price)*100/(Select SUM(total_price) from pizza_sales) as Decimal(5,2)) 
as "Percentage of Total (PCT)" from pizza_sales group by pizza_category;


Select pizza_category, CAST(SUM(total_price)*100/(Select SUM(total_price) from pizza_sales where MONTH(order_date)=1) 
AS Decimal(5,2)) AS PCT
from pizza_sales where MONTH(order_date)=1 group by pizza_category;

Select pizza_size, CAST(SUM(total_price)*100/(Select SUM(Total_price) from pizza_sales) as decimal(5,2))
AS "PCT" from pizza_sales group by pizza_size;

Select pizza_size, CAST(SUM(total_price)*100/(select Sum(total_price) from pizza_sales 
where DATEPART(quarter,order_date)=1) AS decimal(5,2)) as "PCT" from pizza_sales 
where DATEPART(quarter,order_date)=1 group by pizza_size;

Select *from pizza_sales;

Select TOP 5 pizza_name, SUM(total_price) as "Total Revenue" 
from pizza_sales group by pizza_name order by "Total Revenue";

Select TOP 5 pizza_name, SUM(quantity) as "Total Quantity" 
from pizza_sales group by pizza_name order by "Total Quantity" DESC;

Select TOP 5 pizza_name, SUM(quantity) as "Total Quantity" 
from pizza_sales group by pizza_name order by "Total Quantity";

Select TOP 5 pizza_name, Count(Distinct order_id) as "Total Orders" 
from pizza_sales group by pizza_name order by "Total Orders" DESC;

Select TOP 5 pizza_name, Count(Distinct order_id) as "Total Orders" 
from pizza_sales group by pizza_name order by "Total Orders";













