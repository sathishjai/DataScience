create database sales;
use sales;
create table sales(sales_Id int , product_Id int, nos int, selling_date date);
insert into sales values (1101, 231, 4, '2023-06-01'),(1102, 233, 8, '2023-06-04'),(1103, 232, 4, '2023-06-10'),(1104, 231, 8, '2023-06-19'),(1105, 233, 5, '2023-06-15'),(1106, 232, 4, '2023-06-16'),(1107, 234, 7, '2023-06-21'),(1108, 235, 9, '2023-06-25');
select * from sales;
select product_Id,sum(nos) as TotalQuantity
from sales
group by product_Id;
select product_Id,sum(nos) as TotalQuantity
from sales
group by product_Id
limit 4;


select sales_Id,product_Id,nos,selling_date
from sales 
order by selling_date;
select product_Id ,sum(nos) as TotalQuantity 
from sales
group by product_Id
order by TotalQuantity desc;
