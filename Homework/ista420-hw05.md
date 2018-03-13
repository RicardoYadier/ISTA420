## Ricardo Rosa

### ISTA420 Homework 5

### T-SQL


### *chapter 5, pages 161 – 183 in the T-SQL Fundamentals book.*



##### 1. What is a table expression? Can you give a technical definition of a table expression?
A named query expression that represents a valid relational table.

##### 2. In what SQL clause are derived tables (table valued subqueries) located?
In the FROM clause of an outer query.

##### 3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?
You can use the alias from an outer table in an inner table because the inner table can contain a corregated subquery, but the outer cannot.

##### 4. What SQL key word defines a common table expression?
CTEs

##### 5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?


##### 6. Can a main query refer to a previously defined common table expression by multiple aliases?


##### 7. In SQL, is a view a durable object?
Yes,they are stored as a permanent object in the database, making them reusable.

##### 8. In a view, what does WITH CHECK OPTION do? Why is this important?
The purpose of CHECK OPTION is to prevent modifications through the view that conflict with the view's filter.

##### 9. In a view, what does SCHEMABINDING do? Why is this important?
It binds the schema of references objects and columns to the schema of the referencing object.

##### 10. What is a table valued function?
(TVFs) are reusable table expressions that support input parameters.

##### 11. What does the APPLY operator do?
It operates on 2 input tables.

##### 12. What are the two forms of the APPLY operator? Give an example of each.
CROSS PLAY
Implements one logical query processing phase - it applies the right table to each row from the left table and produces a result table with the unified results sets.


OUTER APPLY
This Operator has a second logical phase that preserve all left rows.