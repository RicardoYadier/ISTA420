.echo on
.headers on

--Name:

--Author: Ricardo Rosa

--Date: February 270 2018

--1. What is the order number and the date of each order sold by each employee?

select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from employees e join
orderso on e.employeeid = o.employeeid;
select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from employees e,
orders o where e.employeeid = o.employeeid;


--2. List each territory by region.

select r.region description, t.territorydescription from territories t join region r on 
r.regionid = t.regionid;
select r.regiondescription, t.territorydescription from territories t, region r where 
r.regionid = t.regionid;



--3. What is the supplier name for each product alphabetically by supplier?

select p.productname , s . companyname from p r o d u c t s p jo in s u p p l i e r s s on s . s u p p l i e r i d = p .
s u p p l i e r i d order by s . companyname ;
8 s e l e c t p . productname , s . companyname from p r o d u c t s p , s u p p l i e r s s where s . s u p p l i e r i d = p .
s u p p l i e r i d order by s . companyname

--4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?


--5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?


--6. For every order in May, 1998, what was the customer’s name and the shipper’s name?


--7. What is the customer’s name and the employee’s name for every order shipped to France?


--8. List the products by name that were shipped to Germany.