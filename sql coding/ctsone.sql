show databases;
create database ctsone;
use ctsone;
create table customer(customer_id int ,first_name varchar(20),last_name varchar(30),address varchar(20));
insert into customer values(1,'vicky','d','trichy'),(2,'vijay','r','salam'),(3,'ram','h','trichy'),(4,'hari','p','chennai')
,(7,'gokul','d','trichy'),(5,'ajay','r','salam'),(6,'moni','k','trichy'),
(8,'anish','r','thanjavor'),(9,'fathaima','f','trichy'),(10,'poorani','p','salam');
create table orders(order_id int,customer_id int, order_status int, order_date date,product_id int);
insert into orders values(100,1,1,'2022-12-29',1),(102,2,1,'2022-12-30',2),(103,3,2,'2023-01-09',3)
,(104,4,3,'2023-01-22',4),(105,2,1,'2023-1-24',5),(106,6,2,'2023-2-02',6),
(109,9,2,'2022-2-19',9),(110,6,2,'2023-2-20',10),(107,4,1,'2023-1-02',7),(108,8,3,'2023-01-29',8);

create table ord_status(status_id int ,status_stage varchar(20));
insert into ord_status values(1,'processing start'),(2,'shipping'),(3,'delivired');

create table product(prod_id int ,ord_id int ,prod_name varchar(20),product_price int);
insert into product values(2,1,'shoes',400),(1,2,'watch',500),(3,4,'samsung_ph',1200),(4,3,'mouse',200)
,(2,5,'shoes',400),(5,1,'keyboard',400),( 6,2,'frame',190),(3,6,'samsung',1200),(7,5,'book',450),(8,9,'pendrive',480),(9,8,'memorycard',360),(10,10,'pant',800),(4,8,'mouse',200);



select first_name ,last_name,o.customer_id,o.order_id,os.status_stage 
from customer c join orders o on 
 c.customer_id=o.customer_id join ord_status os on o.order_status=os.status_id;
 
 select * from orders o join product p on o.order_id=p.ord_id and p.prod_id=o.product_id;
 select * from product where prod_name regexp '[a-h]o';
 select  o.customer_id ,first_name, order_status from orders o right join  customer c on c.customer_id=o.customer_id;
 
 select distinct c.customer_id,first_name,order_id,p.prod_name,status_stage,os.status_id from customer c 
 left join orders o USING(customer_id) 
 left join product p on o.product_id=p.prod_id  left join ord_status os on o.order_status=os.status_id 
 order by customer_id;
 
 
  select distinct c.customer_id,first_name,order_id,p.prod_name from customer c 
  join orders o on c.customer_id=o.customer_id 
 left join product p on o.product_id=p.prod_id
 order by customer_id;
 select e.order_id ,o.customer_id from orders o left  join orders e on o.order_id=e.order_id;
 
SELECT *
FROM orders o
JOIN product p ON o.order_id = p.ord_id AND o.product_id = p.prod_id;
select order_id,order_date, 'achived' as status from orders where order_date<'2023-01-01'union 
select  order_id,order_date, 'active' as status from orders where order_date>='2023-01-01'; 
select first_name from customer union
select prod_name from product;
 select * from orders; 
drop table customer_details;
update orders set order_date='2023-11-26' 
where customer_id in
(select customer_id from customer where address in('trichy','chennai')
 );
 
 UPDATE orders
SET order_date = '2023-11-26'
WHERE customer_id IN
 (SELECT customer_id FROM customer WHERE address IN ('trichy', 'chennai'));

delete from orders where customer_id =
(select customer_id from
customer where  address='chennai');

rollback
