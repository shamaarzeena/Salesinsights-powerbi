SELECT sum(T.sales_amount)
from sales.transactions as T
INNER JOIN sales.date as D ON T.order_date = D.date
WHERE D.year = 2020 and T.market_code= 'Mark001';

use sales ;
select *  from sales.transactions
where sales_amount<=1;

select distinct(currency)
from sales.transactions;

# 4 differenent currency 
'INR'
'INR\r'
'USD'
'USD\r'

select count(*)
from transactions
where currency = 'INR';

select count(*)
from transactions
where currency = 'INR\r';

select count(*)
from transactions
where currency = 'USD';

select count(*)
from transactions
where currency = 'USD\r';

select *
from transactions
where currency = 'INR\r';

select *
from transactions
where currency = 'INR';

select *
from transactions
where currency = 'USD';

select *
from transactions
where currency = 'USD\r';
use sales;

select sum(sales_amount)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year =2020 and t.currency ='INR\r' or t.currency='USD\r';

select sum(sales_amount)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year =2018 and t.currency ='INR\r' or t.currency='USD\r';

select SUM(sales_qty)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year=2020;

#revenue for month january
select sum(sales_amount)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year =2020 and d.month_name='January' and (t.currency ='INR\r' or t.currency='USD\r');

select sum(sales_qty)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year =2020 and d.month_name='January' and (t.currency ='INR\r' or t.currency='USD\r');


#total revenue in year 2020 by chennai
select sum(sales_amount)
from transactions as t
inner join date as d on t.order_date= d.date
where d.year =2020 and t.market_code= 'Mark001';

SELECT 
    p.product_code,
    p.product_type,
    SUM(t.sales_amount) AS total_sales
FROM 
    transactions t
JOIN 
    products p ON t.product_code = p.product_code
WHERE 
    YEAR(t.order_date) = 2020
GROUP BY 
    p.product_code, p.product_type
ORDER BY 
    total_sales DESC
LIMIT 5;
