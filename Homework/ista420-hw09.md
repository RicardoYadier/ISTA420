## Ricardo Rosa

### ISTA420 Homework 9

### T-SQL


***Read chapter 9, pages 297 - 313 in the T-SQL Fundmentals book.***

##### 1. What is a temporal table?
Temporal tables display dataat specific points in time.

##### 2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
any time you need to keep track of history.

##### 3. What are the semantics of a temporal table? There are seven of them.
A Primary key

Two Columns defined as DATETIME2

A start column with the Option GENERATE ALWAYS AS ROW START

An end column with the option GENERATE ALWAYS AS ROW END

A designation of the period columns with the option PERIOD FOR SYSTEM_TIME(<startcol>,<emdcol>)

The table Option SYSTEM_VERSIONING set on ON

A linked history table to hold the past state of modified rows

##### 4. How do you search a history table?


##### 5. How do you modify a history tablre?
With INSERT, UPDATE, DELETE, and MERGE statements.

##### 6. How do you delete date from a history table? Why would you want to delete data from a history table?
You don't

##### 7. How do you query all data from both a history file and the current data?
From @start to @end (end being infinity)

##### 8. How do you drop a temporal table?
set system versioning = off, drop current table.