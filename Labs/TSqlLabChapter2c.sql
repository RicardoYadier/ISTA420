.echo on
.headers on

-- Name: Chapter2cLabs.sql

-- Author: Ricardo Rosa

-- Date: March 1, 2018




-- 1

select orderid, orderdate, custid, empid from sales.orders where orderdate like '2015-06-%';

-- 2

select orderid, orderdate, custid, empid from sales.orders where orderdate = EOMONTH(orderdate);

-- 3

select empid, firstname, lastname from Hr.Employees where lastname LIKE '%ee%' or lastname like '%e%e%';

-- 4

select orderid, (qty * unitprice) as totalvalue from sales.OrderDetails where (qty * unitprice) > 10000 order by totalvalue;
Select orderid, SUM(qty*unitprice) as totalvalue
from sales.OrderDetails
group by orderid
having sum(qty*unitprice) >10000
order by totalvalue desc;

-- 5

select empid, lastname
from hr.employees
where lastname collate Latin1_General_CS_AS LIKE N'[abcdefghijklmnopqrstuvwxyz]%';

-- 6

select empid, count(*) as numorders
from sales.orders
where orderdate < '20160501'
group by empid;

select empid, count(*) as numorders
from sales.orders
group by empid
having max(orderdate) < '20160501';

Query one filters orders, then groups remaining filtered orders by employeeid
query two groups by employee id, then removes groups containing orders after 20160501

-- 7

select top (3) shipcountry, avg (freight) as avgfreight
from sales.orders
where orderdate >= '20150101' and orderdate < '20160101'
group by shipcountry
order by avgfreight desc;