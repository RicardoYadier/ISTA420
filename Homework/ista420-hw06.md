## Ricardo Rosa

### ISTA420 Homework 6

### T-SQL

### *Read chapter 6, pages 193 - 204 in the T-SQL Fundamentals book.*

##### 1. What does a set operator do?
Compares complete rows between the results of the two input queries involved.
(set are groups of unique objects)

##### 2. What are the general requirements of a set operator
Input Query1

<.set_operator >

Input Query2

[ORDER BY ...];

two input queries must produce results with the same number of columns and corresponding columns must have compatible data types.

##### 3. What is a Venn Diagram? This is not in the book.
A diagram representing mathematical or logical sets pictorially as circles or closed curves within an enclosing rectangle (the universal set), common elements of the sets being represented by the areas of overlap among the circles.

##### 4. Draw a Venn Diagram of the UNION operator. What does it do?
![](https://i.imgur.com/9Dd9O2t.png)

The shaded area represents the result of the operator. the nonshaded areas reflect the fact that the operator doesn't have to include all the attributes of the original relations. (if the object is in set a or set b)

##### 5. Draw a Venn Diagram of the UNION ALL operator. What does it do?
![](https://i.imgur.com/toWBenI.jpg)

##### 6. Draw a Venn Diagram of the INTERSECT operator. What does it do?
![](https://i.imgur.com/riazByw.png)

Returns only the rows that are common to the results of the two input queries.

##### 7. If SQL Server supported the INTERSECT ALL operator, what would it do?
Returns four occurrences in the output.

##### 8. Draw a Venn Diagram of the EXCEPT operator. What does it do?
![](https://i.imgur.com/vdPHbNB.jpg)

Implements set differences. It operates on the results of two input queries and returns rows that appear in the first input but not the second.


##### 9. If SQL Server supported the EXCEPT ALL operator, what would it do?
Returns only occurrences of a row from the first multiset that do not have a corresponding occurrence in the second.

##### 10. What is the precedence of the set operators?Intersect precedes union and except, and union and except are evaluated in order of appearance.