.echo on
.headers on 

--Name: Chapter 6
--Author: Ricardo Rosa
--Date: March 21, 2018

-- 1.
select country from customers
union
select country from suppliers;

-- 2.
select city, country from customers
union all
select city, country from suppliers
order by country, city;

--3
select country from customers
intersect
select country from suppliers
order by country;

--4
select city, country from customers
intersect
select city, country from suppliers
order by country, city;

--5
select country from customers
except
select country from suppliers
order by country;

--6
select country from suppliers
except
select country from customers
order by country;
