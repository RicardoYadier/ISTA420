#### 1. In your own words, what is a subquery?

A Query within a query.


#### 2. In your own words, what is a self contained subquery?

subqueries that are independent of the tables in the outer query.
one that you can run.

#### 3. In your own words, what is a correlated subquery?
subqueries that refer to attributes from the tables that appear in the outer queary.

#### 4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?

SELECT orderid
FROM Sales.Orders
WHERE empid =
(SELECT E.empid
 FROM HR.Employees AS E
 WHERE E.lastname LIKE N'C%');

#### 5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
SELECT orderid
FROM Sales.Orders
WHEREnempid =
 (SELECT E.empid
  FROM HR.Employees AS E
  WHERE E.lastname LIKE N'D%');

a query that returns a list.

#### 6. Give an example of a subquery that returns table values. When would you use this kind of subquery?

(Select*FROM Sales Orders)


#### 7. What does the exists predicate do? Give an example.

The exist predicate accepts subquearies as inputs and evaluates either true or false . An example would be EXIST (Select*from Sales Orders where sales.country like USA';


#### 8. What happens if we use the not operator before a predicate? Give an example.

It flips the truth values

#### 9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.

It returns 2 values


#### 10. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.

