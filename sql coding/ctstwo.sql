create database ctstwo;
use ctstwo;
create table branch(
branch_id int primary key auto_increment,
branch_name varchar(30) not null,
addr varchar(200));
 drop table employee;
 create table employee
 (emp_id int primary key auto_increment,
 ename varchar(30) not null,
 job_des varchar(200),
 salary int,
 branch_id int,
 constraint fx_branch_id foreign key(branch_id) references branch(branch_id));
  insert into employee values(1,'vicky','hr',850000,1)
 ,(2,'vijay','manager',550000,2),(3,'ram','hr',450000,3)
 ,(4,'monika','sales',750000,1),(5,'hari','hr',550000,2)
 ,(6,'soni','ceo',990000,1),
 (7,'rani','sale',350000,2),(8,'ramiya','production',550000,1)
,(9,'kamal','testing',475000,3),(10,'barathi','manager',450000,2);
 create table empaddr(addr_id int, ename varchar(20),maturaty varchar(20),phno long,age int ,location varchar(30));
  insert into empaddr values(1,'vicky','single',123243565,23,'12 block neikulam')
 ,(2,'vijay','married',934856233,24,'13 block nedungur'),(3,'ram','single',794549282,25,'1 block streat padalur')
 ,(4,'monika','married',743939723,28,'south street padalur'),
 (5,'hari','single',734843834,23,'5 block padalur')
 ,(6,'soni','single',99542245,23,'13 block salam'),
 (7,'rani','married',938483433,40,'north streat karai')
 ,(8,'ramiya','married',823273443,24,'west streat ooty')
,(9,'kamal','single',9323483433,30,'near union bank'),
(10,'barathi','single',938483231,27,'near kalai store');
 insert into branch 
 values(1,'trichy','neikulam'),
 (2,'salam','123 block road'),
 (3,'mumbai','xyz block'),
 (4,'chennai','11th cross road');
select * from branch;
 select * from employee;
 select e.emp_id,e.ename,e.addr,b.branch_name from employee e join branch b on e.branch_id=b.branch_id;
 
 
 select b.branch_name,count(e.emp_id) from employee e join  branch b on b.branch_id=e.branch_id group by b.branch_name;
 
select b.branch_name,avg(salary) from employee e join  branch b on b.branch_id=e.branch_id group by b.branch_name;
 select * from employee;
set autocommit=off;
commit;
delete  from  employee;
rollback;
alter table employee rename column addr to job_des;
select * from employee where branch_id
 in (select branch_id from branch
 where branch_name='trichy');
 select * from branch;
 select * from empaddr;
  select * from employee
 where salary in(
 select min(salary) from employee);
 select branch_id, branch_name, addr as 'location'  from branch 
 where branch_id in
 (select branch_id from employee where salary>460000  and
  ename in(  select ename from empaddr where maturaty='single'));
  select ename ,phno,age from empaddr where ename 
  in (select ename from employee where job_des='manager' and branch_id 
  in (select branch_id from branch where branch_name='salam'));
select er.ename as 'full name',phno,age,job_des  from empaddr er ,employee e,branch b where b.branch_id=e.branch_id and e.ename=er.ename; 
-- exists
select branch_id,branch_name from branch 
where exists   (select * from employee where job_des='manager' and branch.branch_id=employee.branch_id);

-- any 
select * from branch 
where exists(select branch_id from employee where salary>450000 and branch.branch_id=employee.branch_id);
  CREATE INDEX index_name on employee(ename);

select * from index_name;
-- all
select * from employee where branch_id <>all(
select branch_id from branch
where branch_name in ('salam','mumbai'));



create table employeedata(
emp_id int  primary key auto_increment,
ename varchar(20) not null,
job_desc varchar(20) default 'unassigned',
salary int,
pan varchar(10) unique
check(salary>100000));
select * ,rank() over (order by salary asc)  as 'rank',
dense_rank() over( order by salary asc) as 'dense_ran'
,row_number() over(order by salary asc) as 'row'
,percent_rank()over (order by salary asc) from
employee; 
    SELECT INSERT('Hello', 3, 0, ' INSERTED ') AS modified_string;
    
        SELECT rPAD('123', 7, '0') AS padded_string;
        
    SELECT field('hello world', 'o') AS position;
    
    select * from employee;
select ename, max(salary) from employee group by salary;