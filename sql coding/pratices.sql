create database pratices;
use pratices;

create table college(coll_id int primary key,coll_name varchar(20),coll_address varchar(20));
insert into college values(1,"rama","trichy"),(2,"ranu","trichy"),(3,"shalini","chennai"),(4,"tani","ranipatti");
select * from college;
create table employee (emp_id int ,emp_name varchar(20),emp_salary long,city varchar(20) ,primary key(emp_id));
insert into employee values(1,'vicky',425000,'trichy'),(2,'vijay',475000,'trichy'),(3,'ram',455000,'trichy'),(4,'raja',425000,'trichy');
insert into employee values(5,'hari',425000,'salam'),(6,'priya',475000,'salam'),(7,'rambalaji',455000,'trichy'),(8,'rajagobal',425000,'salam');
select * from employee;
select * from employee where emp_salary=(select min(emp_salary) from employee);
select count(*) as total from employee;
select max(emp_salary) as "maxmium salary"  from employee; 
update employee set emp_salary=550000  ,city='salam' where emp_id=7;
insert into employee values(9,'',425000,'salam'),(10,'',475000,'salam'),(11,'rammajayam',455000,'trichy'),(12,'rajaguru',425000,'trichy');
select count(emp_name ) from employee;
delete from employee  where emp_id=10;
alter table employee add exper int;
update employee set exper=3 where emp_id in(1,2,6,5,9);
update employee set exper=4 where emp_id in(3,4,7,12);
update employee set exper=1 where emp_id in(10,11,8);
alter table employee drop column exper;
describe employee;
select distinct city from employee;
update employee set emp_salary=850000 where emp_id=12;

select sum(emp_salary),city from employee group by city order by city asc;
select * from employee;
select * from employee order by emp_name asc;
create table student (sid int primary key ,sname varchar(20),age int);
insert into student values(1,'ram',21),(2,'shyam',18),(3,'seeta',16),(4,'geeta',23);
create table reserve (sid int , isbn int primary key,day varchar(20),    FOREIGN KEY (sid) REFERENCES student(sid)
);
insert into reserve values(1,005,'monday'),(2,006,'tues'),(3,007,'monday');
insert into reserve values(5,9,'wednesday'),(7,10,'friday');
create table book (isbn int  ,bname varchar(20),author varchar(20),    FOREIGN KEY (isbn) REFERENCES reserve(isbn)
);
insert into book values (005,'dbmc','xyz'),(006,'os','pqr'),(007,'daa','abc');

select * from book;
select sname from student s,reserve r,book b where s.sid=r.sid and r.isbn=b.isbn and bname='dbmc'intersect
select sname from student s,reserve r,book b where s.sid=r.sid and r.isbn=b.isbn and bname ='os';

select * from student left join reserve on student.sid=reserve.sid where student.age>20;
select * from student right join reserve on student.sid=reserve.sid ;


select * from employee where emp_salary between 425000 and 550000;
select * from student left join reserve on student.sid=reserve.sid union
select * from student right join reserve on student.sid=reserve.sid;



SELECT INITCAP(sname) AS init_cap_string from student;

select max(emp_salary) as 'maxmium salary' from employee;
select min(emp_salary) as 'minium salary' ,sum( emp_salary) as 'total salary' from employee;
select emp_id ,mid(emp_name,1,4)as mid ,ucase(emp_name) as upper , lcase(emp_name) as lowercase,first(emp_name) as firstitem, locate('a',emp_name) as locate ,format (now(),'yyyy-mm-dd') as formats,length(emp_name) as length from employee;

SELECT 
    emp_id,
    SUBSTRING(emp_name, -2, 0) AS firstitem
FROM 
    employee;

SELECT emp_id, SUBSTRING(emp_name, 1, 7) AS initials FROM employee;
SELECT SUBSTRING('Hello World', -3) AS result;
SELECT NOW() FROM student;
SELECT CURDATE();
select CURTIME();
select DATE();
SELECT EXTRACT(YEAR FROM '2023-09-20') AS extracted_year;

SELECT EXTRACT(MONTH FROM '2023-09-20') AS extracted_month;

SELECT EXTRACT(DAY FROM '2023-09-20') AS extracted_day;

SELECT extract(WEEK FROM '2004-6-1') AS VICKY;
SELECT EMP_NAME, DATE_ADD(BirthTime, INTERVAL 
1 YEAR) AS BirthTimeModified FROM EMPLOYEE;

CREATE TABLE Days (
    id INT PRIMARY KEY,
    date_column DATE
);

insert into days values(1,'2023-2-2'),(2,'2022-4-6'),(3,'2021-2-2');
select * from days;
select curdate();
select id,date_add(date_column,interval 30 day) from days;
select id, date_sub(date_column,interval 4 month) from days;
SELECT DATEDIFF('2019-01-13','2017-01-03') AS DateDiff;
select now(),dayname(now()),dayofmonth(now());
select b;
SELECT DATE_FORMAT(NOW(), '%e') AS month_name;
select lpad(emp_name,8,'-') from employee;


