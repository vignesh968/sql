create database ctsfour;
use ctsfour;
create table result(s_name varchar(20),	subjects varchar(20),
	mark  int);
    insert into result values
    ('Pratibha','Maths',100),
('Ankita',	'Science',	80),
('Swarna',	'English',	100),
('Ankita',	'Maths',	65),
('Pratibha',	'Science',	80),
('Swarna',	'Science',	50),
('Pratibha',	'English',70),
('Swarna',	'Maths',	85),
('Ankita',	'English',	90);
select  * from result;
SELECT subjects, s_name, mark, dense_rank() 
OVER ( partition by subjects order by mark desc ) 
AS 'dense_rank' FROM result;