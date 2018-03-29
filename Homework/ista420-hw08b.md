
## Ricardo Rosa

### ISTA420 Homework 8b

### T-SQL


***Read chapter 8, pages 266 – 287 in the T-SQL Fundamentals book.***






##### 1. The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.

UPDATE db.StateTax
SET rate = newrate;


##### 2. The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?
select salesamount salesid, 3.5 as newrate, 
(salesamount * newrate) as newtax,
sum (salesamount * newrate) as newtotaltax
from salesforlastyear
where year = 2017
group by salesid;

##### 3. Explain how the proprietary assignment update command works.
Updates data in a table and assigns values to variables at the same time.

##### 4. What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
Extract, Transform, Load. the actions of taking a small amount of data and loading them into a database.

##### 5. What are the semantics of MERGE?


##### 6. Write a typical INSERT OUTPUT statement.


##### 7. Write a typical UPDATE OUTPUT statement.


##### 8. Write a typical DELETE OUTPUT statement.


##### 9. Write a typical MERGE OUTPUT statement.


##### 10. What is nested DML?
direct only a subset of the modified rows to a table.