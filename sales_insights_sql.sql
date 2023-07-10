
SELECT market_code, sales_amount FROM sales2.transactions
limit 10;
select * from sales2.transactions 
where market_code = 'Mark001'
order by sales_amount desc

select market_code, sum(sales_amount) as total
from sales2.transactions
group by market_code
order by market_code desc

select  avg(sales_amount)   from sales2.transactions

select * from sales2.transactions

select market_code, avg(sales_amount) 
 from sales2.transactions 
group by market_code 
order by market_code asc;

select * from sales2.transactions as A
inner join sales2.date as B
on B.date = A.order_date

select * from sales2.transactions as A
left join sales2.date as B
on B.date = A.order_date

select * from sales2.transaction as A
left join sales2.customers as B
on A.customer_code = B.customer_code;	


select customer_code, count(customer_code) from sales2.transactions 
group by customer_code


select sales2.transaction.sales_amount sales2.transaction.market_code
sum(sales2.transaction.sales_amount) over (Partition by market_code order by sales_amount) as "Total"
from sales2.transaction 



