## Ricardo Rosa

### ISTA420 Homework 2c

#### SQL




##### 1.What is a data type? Why do we have data types?

A data type is an attribute that specifies the type of data that the object can hold: integer data, character data, monetary data, date and time data, binary strings, and so on

##### 2.What is a collation? Name four elements of a collation.

Refers to a set of rules that determine how data is sorted and compared.
 
  A. language support

  B. Sort Order

  C. Case Sensitivity

  D. Accent Sensitivity

##### 3.How would you strip whitespace from a string? For example, suppose you had “ Dave ” but
wanted only “Dave”

Strip whitespace from a string using the RTRIM and LTRIM functions. To strip the example use the code SELECT RTRIM(LTRIM('   DAVE   '));

##### 4.Suppose you wanted to make a list of every college and university that was called an Institute from
the college table. Write the query. SELECT Name FROM colleges WHERE Name = 'Institute'

##### 5.How would you find out the index of the first space in a string? For example, the index of the first
space in “Barack Hussein Obama” would be 7.

SELECT CHAIRINDEX(' ', 'Barack Hussein Obama');

##### 6.How would you select just the first name in a list of the presidents. First names can be an arbitrary
length, from “Cal” to “Benjamin.”
 SELECT name, LEFT(name,CHAIRINDEX(' ',name + ' ')-1 as FIRST from presidents

##### 7.Payments are due exactly 30 days from the date of the last function. Write a select query that calculates
the date of the next payment. Pretend we want to update a column in a database that contains the
date of the next payment. We will do this when we write UPDATE queries.

 DateAdd (day,30,Lastpayment);

##### 8.Suppose your son or daughter wants to run a query every day that tells them the number of days until
their 16th birthday. Write a select query that does this.

 select birthday FROM children where DATEDIFF(day,now,birthday);

##### 9.What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.

GETDATE and SYSDATETIME