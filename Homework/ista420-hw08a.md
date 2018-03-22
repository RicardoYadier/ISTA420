## Ricardo Rosa

### ISTA420 Homework 8a

### T-SQL

***Read chapter 8, pages 249 – 266 in the T-SQL Fundamentals book.***

##### 1. When using INSERT, is the list of columns necessary? Why or why not?
No, i'ts optional

##### 2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
it always requires a subqueary.

##### 3. What is the operand for the INSERT EXEC statement?
stored procedure
Create Procedure Sales.Orders
 
As

##### 4. How would you use the SELECT INTO statement?
SELECT orderid, orderdate, empid,custid
INTO dbo.Orders
FROM Sales.Orders;

##### 5. What are the parameters to the BULK INSERT statement?
Dumps a bunch of data in a table.

DATAFILETYPE

FIELDTERMINATOR
Separates Colums

ROWTERMINATOR
shows where the end of the row is 

##### 6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
No, you can specify a seed and an increment.
you use number 8 

##### 7. How do you create a SEQUENCE object?
Use the CREATE SEQUENCE command.

##### 8. How do you use a SEQUENCE object?
Create a Sequence object

##### 9. How do you alter a SEQUENCE object?
You can change any of the sequence properties except the data type with the ALTER SEQUENCE command.

##### 10. What is the difference between DELETE and TRUNCATE?
You can specify what you delete with DELETE while the TURNCATE statement deletes all rows from a table.Turncate deletes the data. Deletes all##### 11. What is the difference between DELETE and DROP TABLE?DELETE table deletes values specified. DROP TABLE drops everything.