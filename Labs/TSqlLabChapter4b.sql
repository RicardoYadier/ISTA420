.echo on
.headers on

-- Name: Chapter4b
-- Author: Ricardo Rosa
-- Date: 15 March 2018

-- ex01
select max(o.orderdate) from sales.orders o;
select orderid, custid, empid from sales.orders;
select orderid, custid, empid, orderdate from sales.orders 
  where orderdate = (select max(orderdate) from sales.orders);
  
   -- ex 02
  select orderid, custid, empid, orderdate from sales.orders;
  select top 1 custid, count(orderid) as ordercount
   from sales.orders group by custid order by ordercount desc;
   select o.orderid, o.custid, o.empid, o.orderdate from sales.orders o
   where o.custid = (select top 1 with ties o1.custid
   from sales.orders o1 group by o1.custid order by count(*) desc);
   
   -- 03
   select e.empid, e.firstname, e.lastname from hr.employees e
	 where e.empid not in
   (select o.empid from sales.orders o
    where o.orderdate >= '2016-05-01');