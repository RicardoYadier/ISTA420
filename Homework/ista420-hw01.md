## Ricardo Rosa

### ISTA420 Homework 1

#### SQL


##### 1.Give an informal definition of database as used in the expression “relational database management system.”

A database structured to recognize relations among stored items of information. a Piece of software like SQL

##### 2.Give an informal definition of database as used in the expression “Human Resources database.”

where transactions relating to payroll processing, position management, time and attendance, recruitment, benefits, and other human resources data collection protocols are recorded (a collection of data)

##### 3.Give an informal definition of entity integrity.

A basic constraint of database relational model. 

##### 4.Give an informal definition of referential integrity

is a relational database concept, which states that table relationships must always be consistent.

##### 5.What is a relation as defined in the textbook? A one word answer to this question is sufficient.

A table

##### 6.Is this table in first normal form? Why or why not? If it is not, how would you change it?




No, the column facName and facCreds are not atomic and contain more than one value which can be subdivided. One solution would be to create additional 
columns for first and last names, as well as additonal columns for credentials.

create table faculty (
	facID int primary key,
	facName text,
	facCreds text,
	facCreds1 text,
	facCreds2 text
	facCreds3 text);

##### 7.Is this table in second normal form? Why or why not? If it is not, how would you change it?






No, because the example contains a candidate keys that depend on the primary key. One solution would be to create two tables, one for Owner ID and one for petID and relate them
using a foreign key.

create table owners (
	ownerID int primary key,
	ownerFirstName text,
	ownerLastName text);

create table pets ( 
	petID int primary key,
	ownerID text,
	petName text,
	petType text,
	foreign key (ownerID) REFERENCES owners(ownerID)
	);
##### 8.Is this table in third normal form? Why or why not? If it is not, how would you change it?

No, in the example table friends, friendZip, friendCity, and friendState, rely on friendID. One solution would be to create two tables, using the friendZip as a foreign key. 


##### 9.What is an OLTP database? What operations is it optimized for?

Online Transactional Processing The primary focus of an Online Transactional Processing is data entry.

##### 10.What is a star schema? What operations is it optimized for?

A container of objects and others. consists of one or more fact tables referencing any number of dimension tables.
