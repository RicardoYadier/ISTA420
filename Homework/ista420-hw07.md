## Ricardo Rosa

### ISTA420 Homework 7

### T-SQL

***Read chapter 7, pages 213 - 230 in the T-SQL Fundmentals book***.

##### 1. What is a window function?
A function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.

##### 2. What does PARTITION do?
Restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.

##### 3. What does ORDER BY do?
Defines ordering. (don't confuse this with presentation ordering.)

##### 4. What does ROWS BETWEEN do?
Filters a frame or a subset, of rows from the window partition between the two specified delimiters.

##### 5. What is a ranking window function? Why would you use it? Give an example.
Ranking functions rank each row with respect to others in the window. 

##### 6. What is an offset window function? Why would you use it? Give an example.
Returns an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame.

##### 7. What do LEAD and LAG DO
Support window partitions and windows order clause.
You use this functions to obtain an element from a row that is at a certain offset from the current row within the partition, base on the indicated ordering.

##### 8. What do FIRST VALUE and LAST VALUE do?
Return an element from the first and last row in the window frame, respectively.

##### 9. What is an aggregate window function? Why would you use it? Give an example.
Are used to aggregate the rows in the defined window. they support window-partition, window-order, and window-frame clauses.

##### 10. What is a pivot table and what does it do?
Rotates data from a states of rows to a state of columns, possibly aggregating values along the way.