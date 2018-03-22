.headers on
.echo on

--select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as lineitem.
--sum(lineitem) as total
--from order_details od
--order by od.orderid;


--(od.lineitem*(1/(select distinct od.orderid, (od.unitprice * od.quantity) from order_details)) as total

select od.orderid,
 od.productid, 
 od.unitprice, 
 od.quantity,
(od.unitprice * od.quantity) as linetotal
(select sum(od3.unitprice * od3.quantity) as OrderTotal
    from order_details od3 where od3.orderid = od.orderid) 
    as ordertotal
 from order_details od
   limit 10;

