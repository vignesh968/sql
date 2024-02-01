show databases;
create database home;
use home;
create table members(id int, name varchar(20),age int,occupation varchar(20),salary int, peoplecharacter varchar(20),primary key(id));
show tables;
insert into members values('1','vicky','70','former','40000','kindly');
insert into members values('2','ram','71','ias','100000','heart'),('3','vicky','32','ips','555555','cute');

insert into members values('4','rakesh','79','ias','30000','helping'),('5','vijay','38','sp','555995','cute');
select *  from members;
update members  set name='hari' where id='3';
