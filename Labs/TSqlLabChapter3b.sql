.echo on
.headers on

-- Name: TSqlLabChapter3b

-- Author: Ricardo Rosa

-- Date: March 14, 2018

-- 2
select C.custid, c.companyname, o.orderid, o.orderdate
from sales.customers as companyname
inner join sales.orders
on c.custid = o.custid

-- 3
select custid, country from sales.customers where country like 'USA';

select c.custid, count(o.orderid) as ordercount, sum(od.qty) as totalqty
from sales.customers c
inner join sales.orders o on o.custid = c.custid
inner join sales.OrderDetails od on od.orderid = o.orderid
where c.country like 'USA'
group by c.custid;