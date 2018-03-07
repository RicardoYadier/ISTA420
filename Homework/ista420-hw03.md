## Ricardo Rosa

### ISATA420 Homework

### T-SQL



#### 1. In general, why would you even want to join two (or more) tables together? This is a good time tothink about the nature of relational algebra.

Produces a result set which is the number of rows in the first table multiplied by the number of rows in the second table if no WHERE clause is used along with CROSS JOIN

to get more complete information.


#### 2. Describe in your own words the output from an inner join.


It matches employee row with all other rows that have the same employee id as in the employee row.


#### 3. Describe in your own words the output from an outer join.





#### 4. Describe in your own words the output from an cross join.
Produces a result set which is the number of rows in the first table multiplied by the number of rows in the second table if no WHERE clause is used along with CROSS JOIN

#### 5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?


#### 6. Give an example of a composite join.

select t1.header, t1.headerTwo, t2.anotherHeader, t2.secondHeader
from sample.table1 as t1
inner join sample.table2 as t2
on t1.header = t2.anotherHeader
and t1.headerTwo = t2.secondHeader


##### 7. What is the difference between the following two queries? The business problem is “How many orders
##### do we have from each customer?”
##### ================first query===============
##### SELECT C.custid, COUNT(*) AS numorders
##### FROM Sales.Customers AS C
##### LEFT OUTER JOIN Sales.Orders AS O
##### ON C.custid = O.custid
##### GROUP BY C.custid;
##### ================second query===============
##### SELECT C.custid, COUNT(O.orderid) AS numorders
##### FROM Sales.Customers AS C
##### LEFT OUTER JOIN Sales.Orders AS O
##### ON C.custid = O.custid
##### GROUP BY C.custid;

The first example finds the total number of customers which is pointless to then join tables because the customers table is preserved - its the same as just SELECT COUNT(custid) FROM Sales.Customers; The second example counts orders on the the nonpreserved table so only orders with a custid and not a NULL value are counted

#### 8. What might be one reason the following query does not return the column custID in this query?
#### SELECT C.custid, C.companyname, O.orderid, O.orderdate
##### FROM Sales.Customers AS C
##### LEFT OUTER JOIN Sales.Orders AS O
##### ON C.custid = O.custid
##### WHERE O.orderdate >= ’20160101’;There wouldnt be any custid column if there were no sales after 2016.