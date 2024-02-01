create database jdbcdemo;
use jdbcdemo;
create table employee(emp_id INT primary KEY,ename varchar(30),salary int);
insert into employee values(1,"ram",10000);
select * from employee;