.echo on
.headers on

--Name Chapter05lab.sql
--Author: Ricardo Rosa
--Date: March 22, 2018

--1 List the number orders by each customer who lives in the United States

with USAcust as
    (select customerid from customers where country like 'USA')
select customerid, count(orderid) from orders
     where customerid in USAcust 
group by customerid order by count(orderid) desc;

--2 List the product name and the number of each product from a 
-- German Suppliers sold to a customer in Germany using a CTE. Sort from highest to lowest
with 
with GERprod as (selects.supplierid, s.country, p.supplierid, p.productid as pid,
 p.productname from suppliers s join products p on s.supplierid = p.supplierid
 where s.country like ’Germany’),
GERord as (select d.productid as pid, d.quantity, d.orderid, o.orderid, o.shipcountry
from orders o join order details d on o.orderid = d.orderid
where o.shipcountry like ’Germany’)
select distinct gp.productname, sum (gp.quantity) as Total Sold from GERprod gp join
GERord go
on gp.pid = go.pid group by gp.productname order by Total Sold desc ;