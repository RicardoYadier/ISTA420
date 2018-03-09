.echo on
.headers on

--Name: myfamily.sql

--Author: Ricardo Rosa

--Date: February 270 2018

drop table if exists family;
create table family (
id integer,
name text,
sex integer,
role text,
age integer
);
insert into family values (1,’Ricardo’,1,’parent’,26);
insert into family values (2,’Kyara’,0,’parent’,26);
insert into family values (3,’Diego’,1,’child’,1);
insert into family values (5,’Tania’,0,’pet’,2);
insert into family values (6,’Jake’,1,’pet’,1);
.schema family
select * from family;
select * from family where sex = 1;
select * from family where role like ’parent’;
select * from family where role like ’pet’;
select name from family;
select avg(age) from family;
select sum(age) from family;